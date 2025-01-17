# Use Debian Trixie slim as the base image for a lightweight container
FROM debian:trixie-slim

# Define maintainer or author of the Dockerfile
LABEL maintainer="admin@dlrp.ca"

# Set environment variables to minimize issues and configure Python not to create .pyc files
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Update the package repository and install necessary packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-dev \
    python3-pip \
    python3-venv \
    mate-desktop-environment-core \
    tightvncserver \
    curl \
    wget \
    nano \
    net-tools \
    git \
    sudo \
    htop \
    && pip3 install nltk torch torchvision torchaudio \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && echo "Installation completed successfully."

# Set up the working directory inside the container
WORKDIR /gencore-workdir

# Copy the project's requirements file first to leverage Docker cache
COPY requirements.txt ./

# Install Python dependencies from the requirements file
RUN pip3 install --no-cache-dir -r requirements.txt \
    && echo "Python dependencies installed successfully."

# Copy the rest of the project files into the container
COPY . .

# Non-root User:
RUN useradd -m dlrp && chown -R dlrp:dlrp /gencore-workdir
RUN echo 'dlrp ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
USER dlrp

# Set up VNC server
RUN mkdir /home/dlrp/.vnc \
    && echo "dlrp" | vncpasswd -f > /home/dlrp/.vnc/passwd \
    && chmod 600 /home/dlrp/.vnc/passwd \
    && echo "#!/bin/bash\nxrdb $HOME/.Xresources\nstartmate &" > /home/dlrp/.vnc/xstartup \
    && chmod +x /home/dlrp/.vnc/xstartup \
    && echo "VNC server setup completed successfully."

# Expose the necessary port(s)
EXPOSE 4488

# Health check to ensure the VNC server is running properly
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
    CMD pgrep vncserver || exit 1

# Define the command to run when the container starts
CMD ["vncserver", "-geometry", "1280x800", "-depth", "24", "-localhost", "no", ":1"]

# Function to ensure the script is running with administrative privileges
RUN echo '#!/bin/bash
ensureAdmin() {
    if [[ $EUID -ne 0 ]]; then
        echo "Please run this script as root or with sudo."
        exit 1
    fi
}

# Check the last command and exit if it failed
checkError() {
    if [[ $? -ne 0 ]]; then
        echo "Error: $1 failed with error code $?"
        logError "$1"
        exit 1
    fi
}

# Log errors
logError() {
    echo "$(date) - Error: $1 failed with error code $?" >> /gencore-workdir/error_log.txt
}

# Perform initial system checks
systemCheck() {
    echo "Performing system checks..."
    # Check for Debian version
    grep -q "Debian GNU/Linux 13" /etc/os-release
    checkError "Debian Trixie Check"

    # Check for available disk space
    FreeSpace=$(df / | tail -1 | awk "{print $4}")
    echo "Free space on /: ${FreeSpace}K"
    if [[ $FreeSpace -lt 1048576 ]]; then
        echo "Warning: Less than 1GB of free space available."
    fi

    # Check for internet connectivity
    ping -c 1 google.com > /dev/null 2>&1
    if [[ $? -ne 0 ]]; then
        echo "Error: No internet connection detected."
        logError "Internet Connectivity Check"
        exit 1
    fi

    # Check for required software (e.g., Git)
    which git > /dev/null
    checkError "Git Availability Check"
}

# Update system files and health
updateSystem() {
    echo "Updating system..."
    sudo apt-get update && sudo apt-get upgrade -y
    checkError "System Update"
}

# Install common tools
installCommonTools() {
    echo "Installing common tools..."
    sudo apt-get install -y git nodejs net-tools htop
    checkError "Common Tools Installation"
}

# Install additional tools
installAdditionalTools() {
    echo "Installing additional tools..."
    sudo apt-get install -y python3 python3-venv docker.io docker-compose
    checkError "Additional Tools Installation"
}

# Install optional tools
installOptionalTools() {
    echo "Installing optional tools..."
    sudo apt-get install -y postman slack zoom wget curl terraform kubectl minikube awscli azure-cli
    checkError "Optional Tools Installation"
}

# Clone the repository
cloneRepository() {
    echo "Cloning repository..."
    mkdir -p "$HOME/Source"
    cd "$HOME/Source"
    git clone https://github.com/your/repo.git
    checkError "Git Clone"
}

# Set up Python environment
setupPythonEnv() {
    echo "Setting up Python environment..."
    cd "$HOME/Source/repo"
    python3 -m venv venv
    checkError "Python Virtual Environment Setup"
    source venv/bin/activate
    checkError "Activate Python Virtual Environment"
    pip install --upgrade pip
    checkError "Pip Upgrade"
    pip install -r requirements.txt
    checkError "Install Python Requirements"
}

# Configure Git
configureGit() {
    echo "Configuring Git..."
    git config --global user.name "Your Name"
    checkError "Git Config Username"
    git config --global user.email "your.email@example.com"
    checkError "Git Config Email"
}

# Create common directories
createDirectories() {
    echo "Creating common directories..."
    mkdir -p "$HOME/Projects"
    checkError "Creating Projects Directory"
    mkdir -p "$HOME/Tools"
    checkError "Creating Tools Directory"
}

# Update environment variables (Optional)
updateEnvVariables() {
    echo "Updating environment variables..."
    export PATH="$PATH:$HOME/Tools"
    checkError "Updating PATH Environment Variable"
}

# Update Python packages
update_python_packages() {
    echo "Updating Python Packages..."
    pip install --upgrade pip
    checkError "Pip Upgrade"
    pip install --upgrade -r requirements.txt
    checkError "Update Python Packages"
}

# Build the system
build_system() {
    echo "Building System..."
    cd "$HOME/Source/repo"
    python setup.py build
    checkError "Build System"
}

# Manage Docker containers
manage_containers() {
    echo "Managing Containers..."
    cd "$HOME/Source/repo"
    docker-compose up -d
    checkError "Start Docker Containers"
    docker ps
    checkError "List Running Containers"
}

# Manage Docker volumes
manage_volumes() {
    echo "Managing Volumes..."
    docker volume ls
    checkError "List Docker Volumes"
    docker volume prune -f
    checkError "Prune Docker Volumes"
}

# Deploy with Kubernetes
deploy_kubernetes() {
    echo "Deploying with Kubernetes..."
    cd "$HOME/Source/repo"
    kubectl apply -f deployment.yaml
    checkError "Deploy Kubernetes Resources"
    kubectl get pods
    checkError "Get Kubernetes Pods"
}

# Start the system
start_system() {
    echo "Starting System..."
    cd "$HOME/Source/repo"
    python main.py
    checkError "Start System"
}

# Set up HostOS
setup_hostos() {
    echo "Setting up HostOS..."
    sudo apt-get install -y htop
    checkError "Install htop"
}

# Set up SubOS
setup_subos() {
    echo "Setting up SubOS..."
    echo "SubOS setup is a placeholder."
    checkError "Setup SubOS"
}

# Set up NanoOS
setup_nanoos() {
    echo "Setting up NanoOS..."
    echo "NanoOS setup is a placeholder."
    checkError "Setup NanoOS"
}

# Manage Kubernetes
kubernetes_management() {
    echo "Managing Kubernetes..."
    kubectl get nodes
    checkError "Get Kubernetes Nodes"
    kubectl get services
    checkError "Get Kubernetes Services"
}

# Check system status
status() {
    echo "Checking System Status..."
    echo "Checking Docker status..."
    docker ps
    checkError "Check Docker Status"
    echo "Checking Kubernetes status..."
    kubectl get pods
    checkError "Check Kubernetes Status"
}

# Backup configurations
backup_config() {
    echo "Backing up Configurations..."
    mkdir -p "$HOME/Backup/repo/config"
    cp -r "$HOME/Source/repo/config" "$HOME/Backup/repo/config"
    checkError "Backup Configurations"
}

# Restore configurations
restore_config() {
    echo "Restoring Configurations..."
    cp -r "$HOME/Backup/repo/config" "$HOME/Source/repo/config"
    checkError "Restore Configurations"
}

# Check and install dependencies
check_dependencies() {
    echo "Checking and Installing Dependencies..."
    if ! command -v terraform &> /dev/null; then
        sudo apt-get install -y terraform
        checkError "Install Terraform"
    fi
}

# Launch terminal
launch_terminal() {
    echo "Launching Terminal..."
    ensureAdmin
    x-terminal-emulator &
    checkError "Launch Terminal"
}
' > /usr/local/bin/gencore_setup.sh

RUN chmod +x /usr/local/bin/gencore_setup.sh