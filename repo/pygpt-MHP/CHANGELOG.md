# CHANGELOG

## 2.4.34 (2024-11-26)

- Added a new mode: `Chat with Audio`, with built-in multimodal support for audio input/output. Currently in beta, the execution of commands and tools in this mode is temporarily unavailable.
- Added new models: `gpt-4o-audio-preview`, `gpt-4o-2024-11-20`, `chatgpt-4o-latest`.
- Force disabled integration with the native system menu.

## 2.4.33 (2024-11-26)

- Improved CSS and rendering of file and image lists.
- Added displaying of used attachments in the chat window.

## 2.4.32 (2024-11-26)

- The "Add URL" option added to the "Attachments" tab allows users to include content from a given website as additional context. Currently, it only supports standard web pages and video transcription for YouTube links. More "web" options will be added in the future.
- Added UTF-8 as default in attachments content text read/write.

## 2.4.31 (2024-11-25)

- Added an option checkbox `Auto-index on upload` in the `Attachments` tab: 

**Tip:** To use the `Query only` mode, the file must be indexed in the vector database. This occurs automatically at the time of upload if the `Auto-index on upload` option in the `Attachments` tab is enabled. When uploading large files, such indexing might take a while - therefore, if you are using the `Full context` option, which does not use the index, you can disable the `Auto-index` option to speed up the upload of the attachment. In this case, it will only be indexed when the `Query only` option is called for the first time, and until then, attachment will be available in the form of `Full context` and `Summary`.

- Added context menu options in `Uploaded attachments` tab: `Open`, `Open Source directory` and `Open Storage directory`.

## 2.4.30 (2024-11-25)

- Added instruction to model about mapped data directory in both legacy and IPython code interepreter.
- Updated locales for plugins.

## 2.4.29 (2024-11-25)

- Added a local IPython interpreter - you can now choose between local and sandbox (Docker) in the plugin settings.
- Added the ability to configure mapped volumes and ports for Docker containers in the plugin settings.
- Optimized and speed-up the Llama-index plugin (inline).
- Checkboxes replaced with Toggle buttons.
- Improved settings dialogs.
- Slight modification of the layout.
- Fix: Dockerfile formatting in Code Interpreter config.
- Fix: experts inline plugin execution.

## 2.4.28 (2024-11-24)

- Fix: issue #78

## 2.4.27 (2024-11-24)

- Profile switch fix.

## 2.4.26 (2024-11-24)

- Fix: issue #77

## 2.4.25 (2024-11-24)

- Added new plugin: System (OS), with optional sandbox support.
- Execution of system commands moved to the System plugin.
- Improved sandbox/Docker management.
- Enhanced plugin settings.
- Commands renamed to Tools, simplified layout.
- Fix: handling of the Mouse and Keyboard plugin.
- Fix: switching to a new context from a non-chat tab.
- Fix: camera screenshots when the camera is not started.

## 2.4.24 (2024-11-23)

- Added the ability to use ZIP and TAR archives as attachments (they are now unpacked "on the fly").
- Added the ability to index ZIP and TAR archives (it may be necessary to remove .zip and .tar from the blacklist in the settings).
- Fix: error when uploading to the /data directory using the Upload files button.

## 2.4.23 (2024-11-23)

- Condensed layout widgets margins.
- Added filename info to provided additional context from attachments.
- Fixed auto-clear in attachments in Assistants mode.

## 2.4.22 (2024-11-23)

- Added the ability to use attachments with images, audio, and video as additional context. Tip: to enable the use of images as additional context, you need to enable the option: `Files and attachments -> Allow images as additional context`.
- Edit icons in the chat window are enabled by default.

## 2.4.21 (2024-11-23)

- Added the ability to send additional context from attachments without needing to activate the "Chat with Files" mode. Now, you just need to attach a file, and the additional context from the file will be available in the conversation. More information can be found in the "Files and attachments" section of the documentation.

## 2.4.20 (2024-11-22)

- Fixed freeze in Windows installer. #75
- Small fixes.

## 2.4.19 (2024-11-22)

- Added new LLM providers for Llama-index: HuggingFaceAPI and LocalAI.
- The IPython interpreter now returns local paths to generated files and images (mapped to: %workdir%/ipython/).
- Refactored legacy Agent and Expert modes.
- Fixed Expert mode initialization.
- Added an option in Settings -> Layout to disable animations.

## 2.4.18 (2024-11-21)

- Refactored kernel status and state handling.
- Fixed: audio input execution.
- Improved output from tools in Agents.
- Added status loading animation indicator.
- Other fixes.

## 2.4.17 (2024-11-20)

- Refactored kernel and render events.
- Added multiple formatted extra outputs from plugins.
- Added a 'Reset (clear)' option in the context list for clearing the current context.
- Improved agents steps output handling.
- Fixed the audio button.
- Improved the stop event.
- Other small fixes.

## 2.4.16 (2024-11-19)

- Code Interpreter and Files I/O input/output is now displayed in chat window, using syntax highlight.
- Refactored plugins structure.
- Fix: command execution in Chat in Files mode when no index is selected.
- Fix: missing translations in Agent mode.

## 2.4.15 (2024-11-18)

- Vision analysis added to all modes.
- Added commands for the Vision plugin: image analysis from an attachment, screenshot analysis, camera image analysis - performed in the background in every mode, without switching to vision mode.
- Improved execution of multiple commands at once..
- Improved integration with IPython and extended instructions for the model.
- Other fixes and improvements.

## 2.4.14 (2024-11-17)

- Added a `Loop / evaluate` mode for Llama-index agents, allowing them to work autonomously in a loop and evaluates the correctness of received results using a percentage scale from 0% to 100%, and automatically continue and correct responses below expected value.
- Updated layout: mode and model lists replaced with comboboxes.

## 2.4.13 (2024-11-16)**

- Introduced `Code Interpreter (v2)` with `IPython`: Enables session state retention on a kernel and building on previous computations, allowing for a Jupyter-like workflow, which is useful for iterative development and data analysis. Supports magic commands like `!pip install <package_name>` for package installation within the session. (currently in beta)

## 2.4.12 (2024-11-15)

- Added httpx-socks to the dependencies, enabling the use of SOCKS proxies.

## 2.4.11 (2024-11-15)

- Added a new Llama-index agent: OpenAI Assistant.
- Added proxy settings to the configuration dialog.
- Added more models to the Agent (Llama-index) mode.
- Improved the agents/presets dialog window.
- Disabled the "OpenAI API KEY is not set" Llama-index error when using a local model in Chat with Files mode. You can now use local embeddings, such as Llama3 via Ollama, and use local models without any warnings.

## 2.4.10 (2024-11-14)

- Added support for Llama Index agents. (beta)
- Introduced a new working mode: Agent (Llama Index).
- Added 3 Llama Index agents: OpenAI Agent, ReAct Agent, and Structured Planner Agent.
- Fixed: passing an embed model to vector stores on indexing.
- Fixed: python3-tk error in snap version.

## 2.4.9 (2024-11-12)

- Mouse movement has been moved to the PyAutoGUI library for seamless operation.
- Bridge calls have been moved to an asynchronous thread.
- Fixed the DALL-E call in Image mode.
- Speed improvements and optimizations.

## 2.4.8 (2024-11-12)

- Fix: restoring order of notepads.
- Fix: mouse move offset in Mouse and Keyboard plugin.

## 2.4.7 (2024-11-11)

- Added a new tool: `HTML/JS Canvas`, connected to the `Code Interpreter` plugin. This feature enables real-time rendering of HTML/JS code in a Chromium-based output by using two new `Code Interpreter` commands: `render_html_output` and `get_html_output`.
- Added an SVG icon to the New Tab button.
- Improved the system prompt and execution flow in the `Mouse And Keyboard` plugin and introduced a new option Auto-focus to the plugin settings (default: False).

## 2.4.6 (2024-11-10)

- Fixed notepad tab titles in Copy To menu.

## 2.4.5 (2024-11-09)

- Added a new [+] tab button to the right of the tabs.
- Fixed the issue where the tab name disappeared when creating a new tab.
- Fixed the broken find option (CTRL+F) in the chat window.

## 2.4.4 (2024-11-09)

- Added a new plugin: Mouse And Keyboard. The plugin allows the model to control the mouse and keyboard, control the cursor position, click mouse buttons, use scroll, type text, and press keys on the keyboard.

## 2.4.3 (2024-11-08)

- Added button to hide output from tools/plugins.
- Added tooltips on the preset list showing the system prompt of the preset.
- Added restoration of tooltips for chat tabs.
- Removed disruptive tooltips from the plugin settings window.
- Improved reading of current tab information in event reading with speech synthesis.
- Minor improvements.

## 2.4.2 (2024-11-08)

- Improved commands and tools handling.
- Improved autonomous mode.

## 2.4.1 (2024-11-08)

- Added titles for conversations in tabs.
- Tab tools added to the tools menu.
- Fix: Reload tabs after changing profile.
- Other fixes.

## 2.4.0 (2024-11-06)

- Added the ability to have conversations in multiple tabs (right-click on the tab bar to add new tabs via "Add a new chat", similar to a web browser).
- Added the option to add notepad tabs using the right-click context menu and selecting "Add a new notepad".
- Added tab reorganization via drag and drop (you can now arrange tabs freely using the mouse).
- Added the ability to name tabs.

## 2.3.4 (2024-11-03)

- Support for LaTeX: Mathematical formulas can now be displayed in the chat window using `KaTeX`library (https://katex.org/). This enhancement allows for real-time rendering of complex mathematical expressions.

## 2.3.3 (2024-11-03)

- Added support for models: OpenAI `o1` and `o1-mini` and `SpeakLeash/bielik-11b-v2.2` (Polish LLM: https://bielik.ai).

## 2.3.2 (2024-08-29)

- Date count fix in SQL query.

## 2.3.1 (2024-08-29)

- Fixed timezone detection and date conversions in calendar and context search.
- Added icon indicators showing labels in context items in the calendar (to show if any day has a context with the selected label).
- Added custom prompt templates in the input context menu (for saving, editing, and deleting custom prompts).

## 2.3.0 (2024-08-28)

- Refactored and optimized the chat engine.
- Refactored and optimized command execution.
- Fixed: execution of assistant tool calls.
- Fixed: flow in the expert plugin.
- Fixed: flow in the agent plugin.
- Fixed: console errors in highlight.js.
- Fixed: logging of the context used in the "Chat with Files" plugin.
- Improved the stop command.
- Added a reply stack.
- Other minor fixes.

## 2.2.33 (2024-08-28)

- Improved model compatibility across different modes.
- Enhanced appending of Llama-index response metadata (sources) to context.
- Added scrolling to the selected item when choosing the current context from the File -> Select current menu.
- Hidden clear preset button.
- Fixed duplicated UUIDs in expert presets.
- Extended context and events debugging.
- Added non-GPT models to Agent and Expert modes.

## 2.2.32 (2024-08-27)

- Fixed the selection of the chosen index for use in Agent mode if the internal mode for Agent is Llama-index.
- Added the ability to select an index for use by experts.
- Added automatic, in background mode switching if the given mode is not supported by the selected model in Agent mode and for experts (this allows the use of models available only through Llama-index or Langchain in modes such as Agent or Experts).

## 2.2.31 (2024-08-27)

- Improved behavior of agent and expert calls.
- Improved chat window auto scroll.
- Added a new option "Always continue..." to Agent mode (as opposed to the Auto-stop option).
- Added a new prompt: Config -> Settings -> Prompts -> Agent: continue (always, more steps).

## 2.2.30 (2024-08-25)

- Added link to Discord server in About -> Discord.

## 2.2.29 (2024-08-25)

- Fix: Removed 'Index not prepared' monit when index not created yet.

## 2.2.28 (2024-08-25)

- Fix: Added mechanism to prevent the current index from being deselected when saving settings.
- Added models: llama3.1:70b, llama3.1:405b, and mistral-large.
- Added configuration option: Indexes (llama-index) -> Chat -> Chat mode.
- Split prompt templates context menu into alphabetical submenus.

## 2.2.27 (2024-08-22)

- Added functionality to hide the date suffix if date period separators are enabled.
- Added a new option: Context -> Show date separators in pinned items on the context list, default: False.

## 2.2.26 (2024-08-22)

- Added separators for date intervals in the context list.
- Added a new option: Context -> Show context groups on top of the context list, default: False.
- Added a new option: Context -> Show date separators on the context list, default: True.
- Added a new option: Context -> Show date separators in groups on the context list, default: True.

## 2.2.25 (2024-08-22)

- Improved native API functions handling.
- Improved expert prompts.
- Fixed/improved inline plugin commands handling.

## 2.2.24 (2024-08-21)

- Added a STOP button that allows stopping indexing at any time.
- Improved conversion of ENUM types when generating a native list of functions for the API.
- Disabled adding functions to the list when the option to execute commands is unchecked.

## 2.2.23 (2024-08-21)

- Improved context summarization in Llama-index provider.

## 2.2.22 (2024-08-20)

- Added new API models for "Chat with Files": Google Gemini and Anthropic Claude (see the new section in the documentation: Managing models -> "Using other models (non-GPT)" for more information on how to set API keys)
- Added new local models for "Chat with Files": Llama 3.1, Mistral, Codellama, and Llama2-Uncensored (requires Ollama installed on the local machine - see the new section in the documentation: Managing models -> "Using other models (non-GPT)" for more information on how to enable local model support).
- Added ability for context summarization using Llama-index models (local models can be used to summarize context titles now).
- Added a new option in Config -> Indexes (llama-index) -> Indexing: "Stop indexing on error". If enabled, indexing will stop whenever an error occurs.

## 2.2.21 (2024-08-20)

- Added inline execution for external function calls.
- Added a stop to file indexing if an error occurs.

## 2.2.20 (2024-08-20)

- Llama-index upgraded to 0.10.65
- Langchain upgraded to 0.2.14
- OpenAI API upgraded to 1.41.0
- Code syntax highlight changed from Pygments to highlight.js (better performance)
- Added new model: gpt-4o-mini
- Added native API function calls by default
- Added functions importer (from plugins) into assistants
- Fixed: input message disappear on command response in stream mode
- Fixed: assistants tool outputs submitting

## 2.2.19 (2024-05-16)

- Added a newest multimodal model: GPT-4 "omni": https://openai.com/index/hello-gpt-4o

## 2.2.18 (2024-05-05)

- Fix: prevent crash if no audio to play.

## 2.2.17 (2024-05-05)

- Fix: Added prevent try to play audio if empty output.
- Disabled playing finish event on audio or voice control enabled.

## 2.2.16 (2024-05-05)

- Escape key now stops response generation and audio output (if playing).
- Voice control options added to the Audio menu.
- Added cache on disk for generated static audio content.
- Added plugin translations for other languages.

## 2.2.15 (2024-05-04)

- Added audio output stop on audio input start.
- Added notify about unrecognized command.
- Voice control improvements.

## 2.2.14 (2024-05-04)

- Added a 'Voice Control (inline)' plugin that allows for voice command control directly during a conversation.
- Added configuration in 'Settings -> Accessibility' for a blacklist of actions available as voice commands.

## 2.2.13 (2024-05-03)

- Added stretch to dictionary config fields.
- Removed redundant attachments clear event.

## 2.2.12 (2024-05-03)

- Improved speech recognition.
- Added minimum required length of audio input.
- Added missing translations.
- Fixed settings hooks triggering on profile switch.

## 2.2.11 (2024-05-03)

- Added a blacklist for events for the voice event description in settings.
- Added a delay to playing audio when describing events.
- Sorted the list of events in the configuration.

## 2.2.10 (2024-05-03)

- Extended voice control commands list.
- Extended actions and keyboard shortcuts.

## 2.2.9 (2024-05-02)

- Added more commands to voice control: search for contexts, clear search, add, read and clear calendar memos, context rename.

## 2.2.8 (2024-05-02)

- Added support for disabled people, including voice control and screen event translation with audio synthesis.
- A new section in Settings called 'Accessibility' has been added with options for assistance: voice control, keyboard shortcut definitions for actions, and screen event translation using audio synthesis.
- A new section called 'Accessibility' has been added to the Documentation.

## 2.2.7 (2024-05-01)

- A new experimental work mode has been added: 'Experts', which allows the creation of separate background instances with their own instructions that can be consulted for help. See the documentation: 'Work Modes / Experts'.
- Added a new plugin: 'Experts (inline)`.
- Improved the Agent mode by adding the ability to configure and invoke defined Experts.
- Improved the prompts that control the autonomous mode.
- The main prompt controlling the agents has been moved from presets to the application's settings window.

## 2.2.6 (2024-04-30)

- Added a new model: 'gpt-4-turbo'.
- Vision integrated into Chat mode, without any plugins, if the model supports Vision - currently available for: 'gpt-4-turbo' and 'gpt-4-turbo-2024-04-09'.
- Store importer connected with Logger.
- Fixed: issue with batch unassigning remote files from vector stores.

## 2.2.5 (2024-04-30)

- Fix: import button handler in Assistants.
- Refactored and improved stores batch actions events handling.
- Added missing translations.

## 2.2.4 (2024-04-29)

- Batch actions splitted into 'Current store' and 'All stores' in Assistants remote vector stores importer.
- Added sync current/all context menu options to Sync button.
- Improved remote stores handling.

## 2.2.3 (2024-04-29)

- Fixed Assistants files sync btn.
- Added batch upload files or directory in Assistants vector stores dialog.

## 2.2.2 (2024-04-29)

- Added 'Application environment' option to Config -> General for setting up custom env vars on app load.
- Added chunk render/parse throttling to prevent high CPU load on huge text chunks.
- Optimized and improved Code interpreter output rendering in stream mode in Assistants.
- Improved run stopping in Assistants.
- Fixed syntax theme and 'Edit' icon restore on profile switch.

## 2.2.1 (2024-04-28)

- Improved data reload on profile switch.

## 2.2.0 (2024-04-28)

- Improved code interpreter stream handling in Assistant mode.
- Improved preset plugins reloading on profile switch.
- Fixes and core improvements.
- Updated docs to v2.2.0.

## 2.1.83 (2024-04-27)

- Index list in 'Chat with files' mode moved to combo-box at bottom.
- Enabled display of remote images in chat output.
- Updated docs.

## 2.1.82 (2024-04-27)

- Fixed correct store id saving if hidden thread stores on list.

## 2.1.81 (2024-04-27)

- Improved remote vector stores management.

## 2.1.80 (2024-04-27)

- Fixed missing selection in Assistant store select combo.
- Fixed store deletion.
- Added tooltip to Stores button.

## 2.1.79 (2024-04-26)

- OpenAI API upgraded to version 1.23.6.
- Assistants API: added tool: File search and removed deprecated tool: Retrieval.
- Support for remote Assistant Vector Stores added (accessible through the Assistants API).
- Remote Vector Stores management tool introduced (right-click on an Assistant, select 'Edit', then click the database icon to open Remote Vector Stores editor).
- Importer for Remote Assistant Vector Stores and files included.
- Files uploaded in Assistants mode can now be shared between threads using Vector Stores.

## 2.1.78 (2024-04-25)

- Removed redundant names in block view.
- Scrollbars background integrated with blocks bg.

## 2.1.77 (2024-04-25)

- Added the "tree" command to the I/O Files plugin to retrieve the full directory tree.

## 2.1.76 (2024-04-25)

- Chat items now displayed in blocks.

## 2.1.75 (2024-04-24)

- Copy to clipboard in web view fixed and moved to JS bridge.

## 2.1.74 (2024-04-24)

- Added syntax highlight choose to Theme menu.
- Syntax highlight style colors integrated with Dark/Light app themes.

## 2.1.73 (2024-04-24)

- Fixed issue #50 - missing type key in config.

## 2.1.72 (2024-04-24)

- Fixed context initialization in web view on app load.
- Improved and optimized items rendering.
- Refactored web view CSS.
- Rendering optimization.
- Added real-time items reload and append.
- Added theme CSS to scrollbars.
- Added JS console debug to Logger window.

## 2.1.71 (2024-04-23)

- Added 160+ prompt templates from ["Awesome ChatGPT Prompts"](https://github.com/f/awesome-chatgpt-prompts) repository - to use them, right-click on the input or system prompt textarea and select the "Paste from template..." option.

## 2.1.70 (2024-04-22)

- Added web view CSS reload on theme switch.
- Fixed time display CSS in web view.

## 2.1.69 (2024-04-22)

- Added html buffer to speed-up context initialization in web view.
- Fixed items append in web view in agent mode.

## 2.1.68 (2024-04-22)

- Fix: CPU usage on multiple items.

## 2.1.67 (2024-04-22)

- Optimized items rendering.

## 2.1.66 (2024-04-22)

- Improved content formatting in HTML export.

## 2.1.65 (2024-04-22)

- Improved save as in Web View output.
- Added save as text and save as html separated options.

## 2.1.64 (2024-04-22)

- Improved real-time CSS reloading.

## 2.1.63 (2024-04-22)

- Improved rendering output.
- Updated CSS.

## 2.1.62 (2024-04-22)

- Added default lexer for code syntax highlighting if no language provided.

## 2.1.61 (2024-04-21)

- Added real-time HTML formatting of text chunks in stream mode.

## 2.1.60 (2024-04-21)

- Fixed "Save as" option in WebEngine view.
- Added hiding of empty groups on search.
- Updated formatting and CSS.

## 2.1.59 (2024-04-20)

- Added output renderer: WebEngine/Chromium – with full HTML/CSS/JS support. (Experimental)
- Added a new option to choose a render engine in Settings -> General -> Rendering engine to select between WebEngine / Chromium mode and the Legacy mode (old, with simple markdown CSS support only - for compatibility reasons and troubleshooting).
- Added syntax highlighting to code blocks – issue #43.
- Added a new option in Settings -> Layout -> Code syntax highlight to select a highlight theme.
- Added a new option in Settings -> Context -> Convert lists to paragraphs to enable/disable converting ul and li into p for better copying.
- Copy to clipboard and regenerate response icons are now visible by default.

## 2.1.58 (2024-04-19)

- Fixed Markdown rendering if the content starts with a code block.
- Added a "Switch to created profile" option in the profile creation/duplication dialogs.
- Updated the locale.
- Added a donate option.

## 2.1.57 (2024-04-17)

- Fixed new ctx create on empty profile if previously group was selected.

## 2.1.56 (2024-04-17)

- Added a new menu option: Clear history + groups.
- Improved profile switching.

## 2.1.55 (2024-04-17)

- Improved result handling from Indexer tool.

## 2.1.54 (2024-04-17)

- Added data loaders reload and loaders config reload in real time on profile switch.

## 2.1.53 (2024-04-17)

- Added a new tool: Indexer, for manually indexing files, contexts, and web content, as well as managing indexes. (beta)

## 2.1.52 (2024-04-15)

- Added real-time output from code interpreter in Assistants mode.
- Added new option in Settings > Context: Show code interpreter output.

## 2.1.51 (2024-04-14)

- Added RMB context menu to the New... context button.
- Added filesize info to attachments and uploaded files lists.
- Improved Assistants API stream handling.

## 2.1.50 (2024-04-14)

- Fixed selection update after group rename.
- Added img resolution and filesize info in image preview dialog title.
- Added filesize info in text editor dialog title.

## 2.1.49 (2024-04-14)

- Improved context group handling.

## 2.1.48 (2024-04-14)

- OpenAI API upgraded to version 1.17.1.
- Added a stream mode to the Assistant mode (beta).
- Fixed an issue where context group ID were not copied when duplicating context.

## 2.1.47 (2024-04-12)

- Added auto-creating new context in current group if the group is active.
- Added sending input also with Ctrl+Enter in Shift+Enter mode.
- Extended light style markdown CSS.

## 2.1.46 (2024-04-12)

- Improved code blocks formatting.
- Improved attachment copy/paste.

## 2.1.45 (2024-04-11)

- Added the ability to paste images as attachments using Ctrl+V in chat input and to copy-paste images in the draw/painter.
- Added a "Copy to Clipboard" option in code blocks.
- Introduced a new model: gpt-4-turbo-2024-04-09.

## 2.1.44 (2024-04-11)

- Optimized "Find" option.
- Added copy database and copy data dir checkbox options in profile duplicate dialog.
- Added ability to reset current active profile.
- Added missing translations.

## 2.1.43 (2024-04-11)

- The "Find" option has been extended and added to all text fields.
- Fixed menu reload issue when switching profiles.
- Other small fixes and improvements.

## 2.1.42 (2024-04-10)

- Improved profile switching.
- Added interpreter internal files to excluded when indexing.

## 2.1.41 (2024-04-10)

- Added support for multiple profiles (separated config, settings and workdir), menu: Config -> Profile...
- Added context groups for context items organizing, menu: File -> New context group...
- Added ability to change the model on response edit and regenerate.
- Added real-time updating number of notepads.
- UI/theme fixes.

## 2.1.40-post1 (2024-04-08)

- Llama-index core downgraded to 0.10.13 due to issue #41

## 2.1.40 (2024-04-08)

- Added "Find" option - text search and highlighting of the found phrase in the chat and notepad window, available via CTRL + F or right-click menu / Find... (beta)
- Added GitHub's Monaspace font family: Argon, Krypton, Neon, Radon, Xenon (reset CSS to defaults or manual replacement in CSS files is required for older versions of application to take effect).
- Added an "Restore Default CSS" option in the "Config / Edit CSS" menu.
- Added the ability to use custom .ttf and .otf fonts (just place them in %workdir%/fonts directory).

## 2.1.39 (2024-03-26)

- Added "Change working directory..." option in "Config" menu.
- Improved handling reply from multiple commands at once.
- Tools have been moved to separate parts of the app.
- Added the ability to create custom Tools, with an example tool in the "examples" directory.

## 2.1.38 (2024-03-20)

- Added new Tools menu, with: Media player, Transcribe audio/video files, Image viewer, Text editor and Code interpreter.
- Improved tools.

## 2.1.37 (2024-03-19)

- Added generation of audio transcriptions from audio/video files.

## 2.1.36 (2024-03-19)

- Added split screen view (output/edit) to code interpreter.

## 2.1.35 (2024-03-19)

- Added text files editor and image viewer.
- Improved video player and code interpreter.

## 2.1.34 (2024-03-18)

- Added video player.
- Fixed audio input message append in agent mode.

## 2.1.33 (2024-03-18)

- Code interpreter enabled even if interpreter plugin is disabled.
- Added "Connect to the Python code interpreter window" config option in Code interpreter plugin.
- Added Monospace font support - issue #37.
- Improved raw JSON command outputs.

## 2.1.32 (2024-03-17)

- Global prompts config moved to a separated settings section "Prompts".
- Added auto-clear option in code interpreter.
- Added "Use extra context output" config option in "Settings -> Context".

## 2.1.31 (2024-03-17)

- Improved code interpreter integration with sandbox/docker.
- Added display of hidden files in Files explorer.
- Added "Use as image" context menu action in Files explorer.

## 2.1.30 (2024-03-16)

- Improved real-time Python code interpreter: added edit mode and whole code execution (history).

## 2.1.29 (2024-03-16)

- Added real-time Python code interpreter (<> icon), connected with the Code Interpreter plugin's input and output.
- Improved plugin command execution.

## 2.1.28 (2024-03-15)

- Fixed local commands handling in Assistant API.
- Fixed system prompt replace after mode changed on app start.
- Improved related links rendering in chat output.
- Added RPM limit config option for Embeddings API.
- UI improvements.

## 2.1.27 (2024-03-13)

- Added the "find" command to the Files I/O plugin for searching for files and directories.
- Added "Append metadata" config option in Chat with files plugin.
- Added missing locales to translations.

## 2.1.26 (2024-03-13)

- Added async command execution in History and Chat with files plugins.
- Improved plugin prompts.
- Improved command execution in autonomous mode.
- Improved logging and debugging.

## 2.1.25 (2024-03-13)

- Llama index logging improvement.

## 2.1.24 (2024-03-13)

- Added AzureOpenAI embeddings provider.
- Added metadata append to indexed context from DB.

## 2.1.23 (2024-03-12)

- Added configuration options for embeddings model and provider in Settings -> Llama-Index.
- Added plain-text responses in web_open commands.
- Improved web_open commands in Web Search plugin.
- Added a check to determine if the provided URL is an image when sending URLs within text.

## 2.1.22 (2024-03-12)

- Added custom metadata appending to indexing documents for web/external loaders.

## 2.1.21 (2024-03-12)

- Refactored commands core and command handling to a JSON schema-based config.
- Fixed calls in the API plugin.
- Fixed web_urls in the Web search plugin.
- Fixed adding new notes in the Calendar plugin.

## 2.1.19 (2024-03-11)

- Added "Force exclude files" config option to force exclude extensions in: Settings -> Llama-index -> Indexing (enables file extension exclusion even if a data loader for the extension is available).
- Added custom metadata appending to indexing documents via list in: Settings -> Llama-index -> Indexing.
- Added base API endpoint config arguments in models params.

## 2.1.18 (2024-03-10)

- Added horizontal splitters and min width for lists in settings dialogs - issue #30.
- Added audio icon display config option in Settings -> Context.

## 2.1.17 (2024-03-10)

- Improved audio handling.
- Added options to context debug.
- Added context meta load on demand if not on list.

## 2.1.16 (2024-03-10)

- Added "merge" icon in context responses (allows merging selected response with the previous response).
- Added display of Llama-index used sources in the context response.
- Fixed word-wrap in code blocks - issue #27.
- Fixed context visibility when filters are applied and new ctx is created in the background.
- Improved audio playback status indication for responses.

## 2.1.15 (2024-03-09)

- Added Edit mode in chat output with options: read response (audio), copy to clipboard, regenerate response, edit and regenerate, and delete context item.
- Added dynamic max output tokens calculation in completion mode - issue #28.
- Added config option "Modes to auto-index" in Llama-index settings.
- Fixed typo in gpt-4-turbo-preview model config args for Llama-index provider - issue #29.

## 2.1.14 (2024-03-09)

- Added restoration of "All counters" checkbox status in calendar on tab init.
- Added new line with Shift+Enter in input if sending mode is "Enter" - issue #26.

## 2.1.13 (2024-03-08)

- Fixed context auto-indexing in autonomous/agent mode - issue #23.
- Added AzureOpenAI provider for Llama.
- Added configuration option for the model in query file/web options in plugins.
- Added removal of temporary index from memory after use.

## 2.1.12 (2024-03-08)

- Added config option for max requests per minute (RPM) in `Settings -> Model` - issue #23.
- Added config for continue prompt in `Settings -> Agent`.
- Added config option for custom API endpoint URL in `Settings -> General` - issue #21.
- Added `Allow context item delete` option in `Settings -> Context`.
- Added checkbox `All counters` in filters in Calendar view - when disabled, calendar displays filtered record counters instead of all records.
- Improved the reset to default option in `Settings` to persist all non-settings config options.

## 2.1.11 (2024-03-07)

- Fixed search query if multiple labels selected
- Added prevent from saving empty notes in calendar
- Added display empty dates in DB Viewer if timestamp = 0

## 2.1.10 (2024-03-06)

- Added `DB Viewer` in Developer menu.
- Added label color filter in context list - issue #23
- Added context item delete option - issue #23
- Added presets for plugins - issue #23
- Fixed and improved autonomous agents run - issue #23
- Chinese language added to locales - issue #24

## 2.1.9 (2024-03-04)

- A new option has been added to the `Web Search` plugin: `web_index_query`, which allows for indexing a web and external content in a temporary index (in memory) and quickly querying its content. Works similar to `query_file` command.
- The `read_file` command has been expanded to handle multiple files at once.
- Added `Log and debug events` option to Developer settings.

## 2.1.8 (2024-03-03)

- A new option has been added to the `Files I/O` plugin: `query_file`, which allows for indexing a file in a temporary index (in memory) and quickly querying its content. This enables the use of Llama-index for fast querying or adding context from individual files. From now on, you can ask questions about individual files without indexing them to the main vector store. See the "Querying single files" in "Modes -> Chat with files" section in a README for more info.
- The `read_file` command has been expanded to return just the exact file content, without wrapping it in JSON.
- Improved prompt for preparing queries in the Chat with files plugin.
- Updated docs.

## 2.1.7 (2024-03-03)

- Enhanced the Llama-index plugin with additional options for automatically refining queries before requesting additional context from Llama-index.

## 2.1.6 (2024-03-03)

- Added Twitter/X data loader.
- Added check if message is not a reply when calling Llama-index using a plugin.
- Added list of Agent indexes auto-reload after Llama-index list has changed.
- Disabled anonymized telemetry in Chroma by default.

## 2.1.5 (2024-03-02)

- Recompiled SVG resources.
- Fixed file explorer update after file commands execute.
- Updated docs.

## 2.1.4 (2024-03-02)

- PySide6 downgraded to 6.4.2 due to a bug in signals emitting.

## 2.1.3 (2024-03-01)

- Added data loaders: Bitbucket, ChatGPT Retrieval Plugin, SQL Databases, GitHub, Microsoft OneDrive.
- Added indexing configuration tab in `Web Search` plugin.

## 2.1.2 (2024-03-01)

- Added data loaders: Google Drive, Google Docs, Google Gmail, Google Calendar, Google Sheets, Google Keep.
- Added data loaders: Video/Audio and Images, with local model and API modes.
- Added Whisper (local hosted) model to `Audio Input` providers, available only in Python version.

## 2.1.1 (2024-02-29)

- Llama-index settings split into tabs.
- Added keyword argument settings for data loaders.
- Added data loaders for RSS, XML sitemaps, IPYNB notebooks, and XML and HTML files.
- Added audio notes - simply use speech recognition in the Notepad tab to append transcribed audio to the Notepad.
- Added an icon for quick toggling of video camera capture.
- Added a Video menu.
- Moved video capture toggle checkboxes to the Video menu.

## 2.1.0 (2024-02-28)

- Upgraded Llama-index from the legacy version `0.9` to the current version `0.10` (note: upgrading PyPi version of PyGPT to `2.1.0` requires reinstallation in a virtual environment to remove old library versions).
- Upgraded Langchain to `0.1.9`.
- Upgraded PyInstaller (and compiled versions) to version `6`.
- Removed LlamaHub and restored support for Python `3.12`.
- Fixed imports for Llama-index in the compiled versions.
- Added icons for quickly toggling audio input/output.
- UI fixes.

## 2.0.171 (2024-02-27)

- Added core for loading web resources (not only webpages) to Llama-index.
- Added a data loader for transcriptions of YouTube videos (simply ask for index a YouTube video URL using the `Web Search` plugin - the `web_index` command must be enabled).
- Fixed the "Initial token count exceeds token limit" error in Chat with files mode.
- Added missing translations for dictionary items in settings dialogs.

## 2.0.170 (2024-02-26)

- Added "simplified" mode to the "Audio Input" plugin, now set as default, allowing for faster and simpler speech recognition without requiring any configuration. Meanwhile, all current options have been moved to "advanced" mode.
- Improved microphone support in Snap version.
- Improved file browser update after performing file operations.
- Added check for file availability for indexing in the file browser.

## 2.0.169 (2024-02-25)

- Improved and refactored debugging

## 2.0.168 (2024-02-25)

- Added auto index file on read option in the `Files I/O` plugin
- Improved debugger
- Fixed Bing speech recognition

## 2.0.167 (2024-02-25)

- Fixed empty API key dialog.

## 2.0.166 (2024-02-25)

- Enabled the use of data loaders from Llama-index in the `Files I/O` plugin for reading files, which allows for reading not only text files using the plugin's `read_file` command.
- Added a command for indexing files to the `Files I/O` plugin.
- The `self_loop` plugin has been internally renamed to the `agent` plugin.
- Fixed the display of pinned contexts when the indexed filter is enabled.

## 2.0.165 (2024-02-25)

- Added search provider: `Bing`.
- Added audio output providers: `Google` and `Eleven Labs`.
- Added audio input providers: `Google`, `Google Cloud`, and `Bing`.
- Added a new plugin: `API calls` which allows defining commands for API calls to external services.
- Added an `Excluded file extensions` configuration option in `Settings -> Llama-index`.
- Fixed audio input listener initialization in the Audio Input plugin.

## 2.0.164 (2024-02-24)

- Refactored the Audio Input, Audio Output, and Google Web Search plugins to support multiple audio and search engine providers.
- Introduced the option to add your own audio input, output, and web search providers.

## 2.0.163 (2024-02-23)

- Added storage of indexed urls
- Added info about used library versions in About dialog

## 2.0.162 (2024-02-23)

- Index data storage migrated from JSON to DB.
- Added add/remove to index context menu on ctx list.
- Added last indexed info on ctx list.
- Added option "Replace old document versions in the index during re-indexing" in "Settings -> Llama-index".
- Refactored, optimized and improved file and context indexing.
- Fixed context search SQL query.

## 2.0.161 (2024-02-22)

- Added the option to search within conversation content, not just by titles (disabled by default, can be enabled in: "Settings -> Context -> Search also in conversation content, not only in titles").
- Added a "download" subdirectory for files downloaded in Assistants mode and an option to configure the directory in: "Settings -> Files and attachments -> Directory for file downloads")
- Added logging of options available in: "Config -> Debug" to the logger window, not just to the console.
- Added descriptions in the models editor.

## 2.0.160 (2024-02-21)

- Added auto-replacement of sandbox download links in Assistants with links to downloaded local files.
- Added setup for Poetry.
- Added connection timeout config option to Google Search plugin.
- Fixed recursion error on app exit.
- Updated dependencies.

## 2.0.159 (2024-02-21)

- Added workdir placeholders to images stored from Assistants.
- Added tooltips on modes list.
- Added force synchronous command call if more than one command to execute.

## 2.0.158 (2024-02-21)

- Improved Assistants: added annotations handling, added async function outputs submit
- Fixed creating function duplicates on re-import existing Assistant

## 2.0.157 (2024-02-20)

- Added webpage (URL) indexing using Llama-Index; new options were added to the Google Search plugin: the command "web_index" for indexing a specified page (just ask to index any URL) and "Auto-index", which enables automatic indexing of URLs used by the plugin (disabled by default).
- Decreased the default chunk size in the Google Search plugin.
- Assistant run creation and message sending moved to an async thread.
- Improved files receive from Assistants.

## 2.0.156 (2024-02-19)

- Added disable SSL verify option for search engine calls (not only for search results) in `Google Search plugin` - issue #20.
- Updated certifi to 2024.2.2.
- Added custom launcher, custom plugin, custom vector store, custom LLM provider and custom data loader code examples in `examples` directory in repository.
- Updated documentation.

## 2.0.155 (2024-02-18)

- Importing assistants and assistant files (from API) has been moved to an asynchronous thread.
- Upgraded OpenAI API to 1.12.0.

## 2.0.154 (2024-02-18)

- Fixed hidden user input in Assistants mode
- Fixed system prompt change when switching to Assistants mode without selected Assistant

## 2.0.153 (2024-02-17)

- Added image display in the chat window when a file received from the Assistant is an image
- Added color labels in color select combo boxes
- Added dialog window position save and restore (+ option in Settings to enable/disable this feature)
- Added command "web_url_raw" to the Google Search Plugin which allows you to get the raw HTML/txt content from web pages (without summary)
- Fixed CSS backup path
- Updated documentation

## 2.0.152 (2024-02-16)

- Improved updater, added direct links to new releases
- Improved command execute system prompt
- Added `cwd` command to `Files I/O` plugin
- Added automatic current working directory passing to `sys_exec` command prompt in `Code Interpreter`.
- Added `Refresh` option in File Explorer
- Added monit about camera connect in Snap version with command to execute
- Disabled MenuRoles on MacOS-affected menu items - issue #19

## 2.0.151 (2024-02-16)

- Improved integration between Chat and Vision when functions are provided

## 2.0.150 (2024-02-16)

- Added a new command for the `Google Web Search` plugin - `get_urls`, which allows retrieving a full list of searched URLs and passing it to the model for further use.
- Implemented execution of `functions` defined in the API and their full integration with modes: `Chat` and `Assistant`. For more details, see the new section in the documentation: `Functions and commands`.
- Fixed the tray icon change while the model is generating a response.
- Improved stopping of agents using `Stop`.

## 2.0.149 (2024-02-15)

- Fixed and improved Assistants API (file handling, run handling, token usage, stopping)
- Added vertical canvas resolutions in Painter
- Added brush settings restore in Painter
- Added log file viewer in Debug menu
- Added log level switch in runtime (Developer settings)
- Added functions defining and handling in Presets (works in ChatCompletion API)
- Improved presets and assistants editor dialogs
- Improved debugger and Developer settings

## 2.0.148 (2024-02-07)

- Fixed input/output timestamps in renderer
- Added aspect ratio check and fit on image open in Painter tool

## 2.0.147 (2024-02-04)

- Added `@` tags for quick access to context from previous discussions in the `Context History` plugin (must be enabled in plugin settings, default: disabled).
- Added automatic passing of the day of the week in the `Context History` and `Real Time` plugins.

## 2.0.146 (2024-02-03)

- Disabled online loaders for Llama-index if compiled version is detected (they work properly only in Python version)

## 2.0.145 (2024-02-03)

- Enabled the use of the Context history plugin in inline mode (without the need for the Command execution option).
- Added automatic provision of the current date in the Context History plugin if the Real-Time plugin is disabled.
- Added the ability to count contexts within a specified date range.
- Added an option to limit the maximum number of contexts retrieved per query.
- Enabled the "undo" option in the painter when clearing and opening a new image.

## 2.0.144 (2024-02-02)

- Improved Context history plugin prompts

## 2.0.143 (2024-02-02)

- Added a new plugin: `Context history (calendar)`
- Added a new feature to context list: `Pin on top`
- Added `Minimize to tray on exit` option

## 2.0.142 (2024-02-01)

- Added tray notification on scheduled task run.
- Added tray notification on Agent goal achieved.
- Small fixes.

## 2.0.141 (2024-02-01)

- Improved window hide/restore from tray icon
- Removed capture disable/enable options and Start minimized from settings dialog

## 2.0.140 (2024-02-01)

- Fixed preset duplicating

## 2.0.139 (2024-02-01)

- Improved the generation of names for preset duplicates.
- Added background updates check (with an option in settings to disable it).
- Added dialog to accept license terms at the first launch.
- Fixed calendar content save on month change.
- Small UI improvements.

## 2.0.138 (2024-02-01)

- Added "Duplicate" option to current * (default) presets
- Added "Restore to default" option to current * (default) presets
- Added "Minimize to tray" settings option
- Fixed preset selection when clicked on list with RMB
- Improved calendar records count on month break

## 2.0.137 (2024-01-31)

- Improved Agent / Autonomous mode handling
- Added "Remove file from index" option in file-explorer
- Other small fixes 

## 2.0.136 (2024-01-31)

- Improved integration of Agent mode with llama-index sub-mode
- Updated documentation and locales

## 2.0.135 (2024-01-31)

- Fixed issue where the agent would stop after the first run in Agent mode when the number of iterations was set to non-infinity.
- Added "Agent" section in the settings, with options to select the sub-mode to use (Chat, Completion, Langchain, Llama-index, etc.) and an option to choose the index to use.
- Implemented a feature to display the current run status in Agent mode.

## 2.0.134 (2024-01-30)

- Updated models list

## 2.0.133 (2024-01-30)

- Added the ability for autonomous image generation using the `DALL-E (inline)` plugin in `Agent mode`.
- Added a `Redo` option to the `Painter/Draw` tool.
- Enabled Vision in `Agent mode`.

## 2.0.132 (2024-01-30)

- Experimental: Added new working mode: `Agent (autonomous)`, which works similarly to the `Autonomous Mode` plugin but as a separate mode with editable system prompt presets.
- Renamed `Autonomous Mode` plugin to `Autonomous Mode (inline)`.
- Fixed real-time system prompt tokens calculation update.
- Fixed preset saving in editor.
- Updated icons' fill color.

## 2.0.131 (2024-01-30)

- Fix: set a limited height for list items in editable lists within the options.
- Added new plugin: `System Prompt Extra`: plugin appends additional system prompts (extra data) from a list to every current system prompt. You can enhance every system prompt with extra instructions that will be automatically appended to the system prompt.
- Added a list of prompts for define and use in the `Autonomous Mode` plugin (the previous division into "normal" and "extended" prompts has been replaced with an unlimited, user-editable list).
- Added textarea stretch on dialog resize in dictionary options editor
- Introduced a new `duplicate` option in the context list (it copies the selected context to a new one).

## 2.0.130 (2024-01-29)

- Added status indicator in Tray - feature [#12](https://github.com/szczyglis-dev/py-gpt/issues/12)
- Added icons to tabs, tray and context menus
- Added "Files and attachments" section in Settings

## 2.0.129 (2024-01-29)

- Added Material Design SVG icons (by Google)
- Added icon resources compiler script
- Improved file explorer

## 2.0.128 (2024-01-29)

- Added improvements to RMB context menu handling in Files
- Improved generation of names for duplicated files

## 2.0.127 (2024-01-28)

- Added ability to auto-store (in the `%workdir%/upload` directory) local copies of attachments uploaded from outside the workdir.
- Added an option in the general settings dialog: `Store attachments in the workdir upload directory`, default: True
- Added an option for storing everything in the `data` directory: `Store images, capture and uploads in data directory`, default: False

## 2.0.126 (2024-01-28)

- New features in file explorer (`Files` tab):

- Create empty file
- Create directory
- Upload files to selected directory
- Download file or directory
- Duplicate file or directory
- Use as attachment
- Ask for read this file
- Copy working/system path to input and clipboard

## 2.0.125 (2024-01-28)

- Fixed chars encoding in save text to file option

## 2.0.124 (2024-01-28)

- Fixed Vision checkbox visibility when switching to plain-text mode
- Added RMB context menu option "Save as..." to selected text for saving selected text (or whole document) to a text file
- Added remembering the last used directory for uploading attachments/saving files

## 2.0.123 (2024-01-27)

- Standarized models names
- Added `Recursive directory indexing` option in `Settings / Indexes (Llama-index)` (default: False)

## 2.0.122 (2024-01-27)

- Added new OpenAI model released on 2024-01-25: `gpt-4-0125-preview`
- Added ability to add custom offline data loaders for Llama-index
- Improved debugging and logging, added debug levels, and introduced a new section `Debugging and Logging` in the documentation
- Moved inline styles to external CSS classes
- Renamed `pygpt_net.provider.llm` to `pygpt_net.provider.llms`

## 2.0.121 (2024-01-27)

- Fixed query error when using Query mode in Chat with files mode with enabled plugins
- Added a bridge/abstraction layer between modes
- Hid the assistant checkbox in the preset editor

## 2.0.120 (2024-01-26)

- Fixed font-size restore when switching between plain text and markdown renderer
- Added RMB context menu option "Clear files" to input Attachments tab.

## 2.0.119 (2024-01-25)

- Fixed list selection loose after async command execution
- Added "Start minimized" option in settings
- Updated docs

## 2.0.118 (2024-01-25)

- Added "Show tray icon" option in "Settings"
- Added launcher arguments
- Updated docs
- Small fixes

## 2.0.117 (2024-01-24)

- Added a new feature to the `Files I/O` plugin - `Get and upload file as attachment`. It lets automatically read files from `data` folder and send them as attachments - just ask to send a file as an attachment and the model will send it to itself (like sending an image for analysis). Option is disabled by default in the plugin`s settings.
- Added a new plugin: `Serial port / USB`. This plugin lets you read and send any commands to USB ports (so you can control robots now ;) ).
- Made it possible to use URLs for images when not using the vision feature.
- Fixed saving and reloading prompts in Assistant mode.
- Removed display of empty external images from the output.

## 2.0.116 (2024-01-24)

- Fixed font color in light themes
- Fixed layout display on Windows systems
- Theme, Language and Debug menus moved to Config menu - feature [#10](https://github.com/szczyglis-dev/py-gpt/issues/10)
- Added Developer section in Settings
- Fixed list options editing
- Refactored code and updated tests

## 2.0.115 (2024-01-22)

- Added token recalculation after the attachments list is changed and upon copy/pasting into the input field.
- Added descriptions to the settings.
- Improved the "Copy selected text to..." option.

## 2.0.114 (2024-01-21)

- Fixed broken CSS on Windows
- Added support for Vector Store databases: `Chroma`, `Elasticsearch`, `Pinecone` and `Redis` (beta)
- Added config options for selecting and configuring Vector Store providers
- Added ability to extend PyGPT with custom Vector Store providers
- Added commands to the `Vision (inline)` plugin: get camera capture and make screenshot. Options must be enabled in the plugin settings. When enabled, they allow the model to capture images from the camera and make screenshots itself.
- Added `Query index only (without chat)` option to `Chat with files` mode.
- Added stream mode support to query index mode in `Chat with files`.

## 2.0.113 (2024-01-20)

- Added %workdir% placeholder to attachments and images files paths storage for more flexibility in moving data between environments
- Refactored base plugin options handling

## 2.0.112 (2024-01-19)

- Fixed image variants slider in image mode
- Fixed vision checkbox visibility
- Fixed user directory path when handling different directories/symlinks
- Added config option for disable opening image dialog after image generate
- Added Scheduled tasks entry in taskbar dropdown
- Added * (asterisk) indicator after date modified if newer than last indexed time
- Date of modified in file explorer changed to format YYYY-MM-DD HH:MM:SS

## 2.0.111 (2024-01-19)

- Fixed: opening files and directories in Snap and Windows versions
- Fixed: camera capture handling between mode switch
- Added: info about snap connect camera in Snap version (if not connected)
- Added: missing app/tray icon in compiled versions

## 2.0.110 (2024-01-19)

- Fixed bug: history file clear on ctx remove - Issue [#9](https://github.com/szczyglis-dev/py-gpt/issues/9)
- Vision inline allowed in modes: Langchain and Chat with files (llama-index)
- Event names moved to Event class

## 2.0.109 (2024-01-18)

- Fixed bug: float inputs value update behaviour - Issue [#8](https://github.com/szczyglis-dev/py-gpt/issues/8)
- Added: plugin description tooltips - Issue [#7](https://github.com/szczyglis-dev/py-gpt/issues/7)
- Added: focus window on "New context..." in tray - Issue [#13](https://github.com/szczyglis-dev/py-gpt/issues/13)
- Added: Ask with screenshot option to tray menu - Issue [#11](https://github.com/szczyglis-dev/py-gpt/issues/11)
- Added: Open Notepad option to tray menu - Issue [#14](https://github.com/szczyglis-dev/py-gpt/issues/14)

## 2.0.108 (2024-01-16)

- Added confirmation dialogs on indexing
- Added missing translations
- Updated dependencies: openai, cryptography, certifi, urllib, jinja

## 2.0.107 (2024-01-16)

- Fixed model change in vision plugin
- Fixed completion API error
- Removed deprecated davinci and replaced with 3.5-turbo-instruct model

## 2.0.106 (2024-01-15)

- Added "undo" action in drawing window
- Refactored locale handling
- Improved locale and theme overriding

## 2.0.105 (2024-01-15)

- Extended `Theme` menu with new options
- `Index (llama-index)` mode changed name to `Chat with files` mode
- Refactored theme controller
- Fixed model config providing to llama-index mode

## 2.0.104 (2024-01-14)

- Langchain support refactored and fixed
- Added editor for models
- Added options for customize arguments and environment vars passed to langchain and llama providers
- Added context length limit in modes: langchain and llama-index
- Models configuration integrated between GPT/Langchain/Llama-index

## 2.0.103 (2024-01-13)

- Llama-index mode, now integrated with context from the database, streaming, plugins, and more, can be utilized as any other mode and is no longer limited to just querying indexes.

## 2.0.102 (2024-01-13)

- Added presets for llama-index mode
- Added custom system prompt in llama-index mode
- Added option to use online data loaders in settings
- Added hiding of chat footer in non-chat tabs
- Added missing libraryfor epub data loader

## 2.0.101 (2024-01-13)

- User interface improvements
- Added help tips

## 2.0.100 (2024-01-13)

- Llama-index integrated with database - you can now indexing all conversations and use them as additional context
- Added support for multiple indexes at once
- Added configuration for llama-indexes
- Data-dir in home directory changed name from 'output' to 'data'

## 2.0.99 (2024-01-12)

- Added configuration sections in settings dialog
- Added translations to file explorer
- Langchain migrated to langchain community
- Config patchers moved to separated classes
- Fixed some UI issues

## 2.0.98 (2024-01-12)

- UI fixes

## 2.0.97 (2024-01-11)

- DALL-E config fix

## 2.0.96 (2024-01-11)

- Added integration with Llama-index (experimental): you can now index/embed files from the data directory and use them as additional data in context.
- Added an inline plugin for Llama-index (allows providing additional context from Llama-index in any chat mode).
- Built-in file loaders: text files, pdf, csv, md, docx, json, epub, xlsx
- Added a new mode: Index (llama-index), it is a mode for querying the index directly.
- Improved DALL-E 3 configuration, 16:9 images set as default, added config option for standard and HD mode.
- Improved drawing mode.

## 2.0.95 (2024-01-10)

- Added capture from camera feature in image drawing mode

## 2.0.94 (2024-01-10)

- Improved drawing: added canvas, image load/save, store and restore drawing on start and more
- Improved dict option editor: added type fields

## 2.0.93 (2024-01-10)

- Added painter (simple image drawing) - it allows to quick draw images and provide them into vision model
- Small UI fixes

## 2.0.92 (2024-01-10)

- Fixed bug with system prompt append from main window
- Added editor for list options (via RMB -> Edit...)
- User/AI names and temperature removed from main window
- UI fixes

## 2.0.91 (2024-01-09)

- Added new plugin: Crontab / Task scheduler: the plugin provides cron-based job scheduling - you can now schedule tasks/prompts to be sent at any time using cron-based syntax for task setup.
- Added combo-box to configuration option types
- Fixed incorrect contexts count in date calculation when timezone is different from UTC
- Fixed incorrect paragraph formatting after command DIV in the last line of response
- Other small fixes and improvements

## 2.0.90 (2024-01-08)

- Fixed config load defaults bug
- Refactored configurations core
- Small UI fixes

## 2.0.89 (2024-01-07)

- Added secondary, extended prompt to autonomous mode configuration (it allows quick switching between standard and more extended reasoning).
- Fixed user input disappearance in history when appending inside autonomous mode.

## 2.0.88 (2024-01-07)

- Added color labels to context items (you can now mark item on list with 'Set label color...' context menu option)
- Improved storage of notepad and calendar items

## 2.0.87 (2024-01-07)

- Fixed paragraph formatting and font color.
- Implemented automatic database backup creation prior to all migrations.
- Added functionality to search contexts using both fields in a single query: search string and date range.

## 2.0.86 (2024-01-07)

- Fixed window state saving on exit
- Added focus on input on creating new context

## 2.0.85 (2024-01-07)

- Improved Autonomous mode
- Added synchronous command execution from plugins, which now allows the Autonomous mode to use the output of other plugins (such as access to the websearch engine, access to filesystem and code execution or generating images in DALL-E) and retrieve and use response from them internally
- Fixed system prompt for Autonomous mode: resolved the problem of command generation interruptions between responses, and incorporated the capability for user to send additional instructions and update goals in real-time
- Fixed loss of selection on the modes and models list in Autonomous mode

## 2.0.84 (2024-01-06)

- The "Self-Loop" plugin has been completely redesigned, improved, and renamed to the Autonomous Mode, which enables the launch of autonomous reasoning in a looped AI-with-AI conversation mode.
- A system prompt option has been added to the plugin configuration with instructions for the autonomous mode.
- Auto-stop after goal is reached option is added also to plugin settings.

## 2.0.83 (2024-01-06)

- Added calendar, day notes (memos) and color labels
- Added context search filter by date (days selected in calendar)
- Added 'clear' icon in search input
- Small fixes and improvements

## 2.0.82 (2024-01-05)

- Plain text append scroll fix

## 2.0.81 (2024-01-05)

- Added Edit context menu option in models list (JSON file edit)
- Fixed link color in light theme css
- Fixed font color restore when switching to plain text

## 2.0.80 (2024-01-05)

- Added Plain Text checkbox at the bottom of chat window
- Removed datetime append when copying text to notepad
- Improved plain-text mode

## 2.0.79 (2024-01-05)

- Fixed bug: notepad save/load content from DB

## 2.0.78 (2024-01-05)

- Improved markdown formatting
- Output text renderers moved to separated modules
- Added plain-text render option in settings
- Vision inline disabled in unsupported modes (Image generation and Assistant) and hidden in Vision (always enabled here)
- Updated OpenAI Chat Completion API

## 2.0.77 (2024-01-05)

- Fixed inline plugins disable when pausing command plugins by unchecking '+ Tools' checkbox
- Added real-time image appending into chat window when generating images in Image Generation mode
- Added automatic creation of context after deletion from the list when no other context is selected
- Updated docs

## 2.0.76 (2024-01-04)

- Markdown post-process changed from markdown extension to BS4 html parser.

## 2.0.75 (2024-01-04)

- Improved default theme for markdown styling
- Added "Check for updates on start-up" config option in updater dialog
- Added custom CSS stylesheets editor in Config menu
- Added password show/hide in password/secret input fields (click on the right corner of input reveals plain text)
- Fixed JSON files editing (added data reloading after save to prevent overwrite on exit)
- Added tests for plugins and extended tests for core/controllers

## 2.0.74 (2024-01-03)

- Fixed timestamp position when appending input to the chat window.
- Extended the Markdown parser with an extension for converting `li` to `p` (it allows copying lists bullets with Ctrl-C).
- Added notebook titles to the "Copy to..." context menu.
- Added an "Open file" option in the file explorer and attachments list.

## 2.0.73 (2024-01-03)

- Fixed vision prompt appending
- Improved inline vision: removed the "keep" option and added a vision indicator with a checkbox for quickly enabling/disabling the vision model if needed (will auto-enable when an image is provided if the plugin is active)

## 2.0.72 (2024-01-02)

- Fixed markdown / HTML formatting
- Added config option "Use color theme in chat window" in main settings
- Added configuration for system prompt to use with vision in Vision Inline plugin settings

## 2.0.71 (2024-01-01)

- Added Markdown and HTML formatting in the chat window (beta version)
- Added the display of images, files and URLs internally in the chat window
- Added fully integration with images, attachments, and files inside the chat window
- Added vision capture and image generation directly into the chat window (via the DALL-E Inline plugin)
- Improved audio speech generation (eliminated the silence that prematurely truncated the previous audio output before generating the next speech synthesis)

## 2.0.70 (2023-12-31)

- Added commands part strip from speech generation
- Added img check for links sending to vision in auto mode

## 2.0.69 (2023-12-31)

- Added a new plugin: GPT-4 Vision (inline - in any chat). Plugin integrates vision capabilities with any chat mode, not just Vision mode. When the plugin is enabled, the model temporarily switches to vision in the background when an image attachment or vision capture is provided.


## 2.0.68 (2023-12-31)

- Added a new plugin: DALL-E 3 Image Generation (inline) which enables image generation in any chat and mode, seamlessly in the background - just request an image from any model, like GPT-4, and it will generate it "inline."
- User Interface optimizations.
- Added type hints to the code.
- Fixed issue with sending attachments in Assistant mode.

## 2.0.67 (2023-12-30)

- Notepad restore fix

## 2.0.66 (2023-12-30)

- Added "Rename" option to Notepad Tabs (via RMB)
- Improved language switching

## 2.0.65 (2023-12-30)

- Image generation, vision capture and assistants run listeners moved to async threadpool
- Added saving state of scroll value in chat window
- Added search string save and restore
- Added input text save and restore
- Updated tests and code cleanup
- Added translations (only main app): DE, ES, FR, IT, UA 
- Small fixes and optimizations

## 2.0.64 (2023-12-29)

- Commands and plugins execution moved to asynchronous native QT threadpool
- Improved theme switching
- Improved debugger window
- Small fixes and optimizations

## 2.0.63 (2023-12-28)

- Fixed context append bug
- Improved layout resize

## 2.0.62 (2023-12-28)

- Fixed date display on context list
- Added mode display in context tooltips
- Added "Contexts list records limit" config option in settings
- Added tokens calculator tooltips

## 2.0.61 (2023-12-28)

- DALL-E multiple messages in one context fix

## 2.0.60 (2023-12-28)

- Message append fix

## 2.0.59 (2023-12-28)

- Storage of context has been changed from JSON files to SQLite database, automatic migration is included - you will not lose your existing data after update :)
- Added "Search" functionality for contexts and a search input at the bottom.
- Updated contexts now automatically land at the top of the list.
- Added the ability to store more information about each context.
- Integration of searching, utilizing SQLite, and vector database search coming soon.
- Improved DALL-E image generation.

## 2.0.58 (2023-12-27)

- Code refactor
- Added stream response mode to Vision mode
- Added token calculation to Langchain mode
- Optimizations and small fixes

## 2.0.57 (2023-12-26)

- Added threadpool for async workers handling
- Fixed segmentation fault error on app exit
- Refactored class names

## 2.0.56 (2023-12-25)

- Reorganized project structure
- Relative imports changed to absolute imports
- Updated core paths
- Fixed plugin response hanging
- Fixed recursion problem in error logger
- Fixed platform module name

## 2.0.55 (2023-12-25)

- Fixed max model ctx tokens 

## 2.0.54 (2023-12-25)

- Updater new version check moved to post-setup
- Fixed default assistant preset
- Added link to Snap Store to updater window

## 2.0.52 (2023-12-25)

- Added DPI option in settings: enable/disable and scale factor
- Fixed font-size change with mouse scroll on notepad window

## 2.0.51 (2023-12-25)

- Added auto-content truncate before tokens limit exceeded
- Added dynamic max tokens switching
- Fixed real-time tokens calculation

## 2.0.50 (2023-12-25)

- Fixed async logging
- Updated tests

## 2.0.49 (2023-12-24)

- Fixed crash on async command call
- Fixed UI issues
- Added data providers
- Refactored classes

## 2.0.48 (2023-12-23)

- Added custom errors handler with logging.

## 2.0.47 (2023-12-23)

- Added "Copy to Notepad/Input" to the context menu for selected text.
- Added an option to read selected text using speech synthesis in the Notepad window.
- Added a configurable number of notepads.
- Refactored UI classes.
- Added a thread-safe plugin debugger/logger.
- Fixed UI issues.

## 2.0.46 (2023-12-22)

- Improved tokens calculation (added extra tokens from plugins to real-time calculation)
- Added new context menu option to selected text in output/input: "Read with speech synthesis"

## 2.0.45 (2023-12-22)

- Added "light" themes
- Fixed tokens calculation
- Updated tests

## 2.0.44 (2023-12-21)

- Fixed language switch in plugins settings

## 2.0.43 (2023-12-21)

- PyGPT publicated at Snap Store: https://snapcraft.io/pygpt
- Added link to Snap Store in app menu

## 2.0.42 (2023-12-20)

- Audio output library changed to `PyGame` mixer (instead of `PyDub`)
- Added `PyGame` as a dependency and removed `PyDub` and `simpleaudio` dependencies
- Added audio input/output stop immediately on plugin disable

## 2.0.41 (2023-12-20)

- Added "sandbox" feature to the Code Interpreter – it allows the use of any Docker image as an environment for code and commands execution.
- Context auto-summary moved to an async thread.
- Command execution moved to an async thread.

## 2.0.40 (2023-12-19)

- Totally improved material themes support
- Added QSS-configurable themes to chat output window and code highlighter
- Added ability to overriding styles per any theme in user directory
- Fixed UI layout elements
- Fixed DPI issues in Windows systems

## 2.0.39 (2023-12-18)

- Fixed dialogs closing with the Esc key
- Added an indicator for "can append to context in this mode"
- Added functionality to fetch filenames from the API when importing files uploaded to Assistants
- Enabled switching to newly created Assistants after creation
- Optimized class structure

## 2.0.38 (2023-12-18)

- Multi-language support added to plugins
- Implemented feature to override locale and CSS files by overwriting them in the home directory
- Bug fixes

## 2.0.37 (2023-12-18)

- Fixed prompt typing in real-time on the right toolbox
- Added toolbox font change option
- Simplified custom plugins and wrappers for LLMs application (see Docs for more details)
- Bug fixes
- UI fixes

## 2.0.36 (2023-12-18)

- Improved plugins handling
- Added Event Dispatcher and event-based system

## 2.0.35 (2023-12-18)

- Fixed lists focus lost and selection disappearing
- Added clickable links to API keys pages
- Added scroll position store in notepads
- Auto auto-switch to preset after create
- Assistants files and thread moved to external classes
- UI fixes
- Code fixes

## 2.0.34 (2023-12-17)

- Added option "Lock incompatible modes" to prevent mixing of incompatible contexts.
- Added PyPI link to the About menu. 

## 2.0.33 (2023-12-17)

- Fixed dialog's save/update button handlers
- Fixed uploaded files reload in assistants
- Fixed focus loss on assistants list
- Fixed Output Files header
- Fixed UI
- Added delete confirmation to dictionary options
- Added context change lock before response generation
- Added allowed types for contexts
- Added a link to the documentation in the menu
- Added saving state of opened advanced options in plugins
- Disabled mouse scroll on sliders

## 2.0.32 (2023-12-16)

- Added real-time font-size change with CTRL + mouse scroll in input, output and notepad windows
- Increased allowed font-size to 42
- Fixed line display in plugin settings

## 2.0.31 (2023-12-16)

- Speech recognition (Whisper) small fixes, optimization and improvements
- Added advanced internal options to speech recognition config

## 2.0.30 (2023-12-15)

- Speech recognition and synthesis fixes and improvements
- Fixed and improved speech recognition via Whisper
- Fixed and improved voice synthesis via OpenAI TTS and MS Azure
- Added new options to speech recognition: magic words, stop words, auto-send and wait for response
- Added new more intuitive voice input/output control panel in UI

## 2.0.29 (2023-12-14)

- Added config and plugin options getters/setters
- Changed logo
- Small UI fixes

## 2.0.28 (2023-12-14)

- Added new hidden Credentials/API Key field type (asterisks against plain-text)
- Simplified presets editing
- Fixed Assistants function management
- Improved UI
- Improved settings editing

## 2.0.27 (2023-12-14)

- Added specified "url open" command to Web Search plugin
- Added additional advanced options to above plugins
- Improved Web Search and Commands Execution
- Improved updater and config patcher
- Improved command execution logging

## 2.0.26 (2023-12-13)

- Added advanced config options for plugins
- Added additional file operations to Files I/O plugin

## 2.0.25 (2023-12-13)

- Added advanced settings
- Added clear on capture config option
- Added capture quality config option
- Added launcher shortcuts
- Improved plugins
- Improved WebSearch
- Optimized commands response
- Fixed UI issues

## 2.0.24 (2023-12-12)

- Fixed empty string in tokens calculator
- Added attachments reset before auto-capture from camera

## 2.0.23 (2023-12-12)

- Improved python code execution

## 2.0.22 (2023-12-12)

- Fix: env API KEY name for Langchain mode

## 2.0.21 (2023-12-12)

- Simplified assistant configuration
- Added assistant configuration validation
- Improved UI
- Improved language switcher

## 2.0.20 (2023-12-11)

- Improved Assistants API
- Added assistant uploaded files storage
- Added assistant uploaded files management
- Added assistant remote functions management
- Fixed "open in directory" option on Windows in DALL-E image generation
- Improved attachments and file upload management
- Improved UI and more

## 2.0.19 (2023-12-10)

- Optimized DALL-E prompt generator helper

## 2.0.18 (2023-12-10)

- Config fix

## 2.0.17 (2023-12-10)

- Small fixes

## 2.0.16 (2023-12-10)

- Added multiple cameras config
- Added DALL-E prompt generation RAW MODE ON/OFF switch
- Improved camera handling

## 2.0.15 (2023-12-10)

- Added camera release / disable on camera off

## 2.0.14 (2023-12-10)

- Added real-time video capture from camera in "Vision" mode

## 2.0.13 (2023-12-10)

- Fixed path resolving in "open in directory" option on Windows OS
- Added real-time apply of "layout density" (after "save changes" in Settings)
- Default "layout density" changed to 0
- Updated locale

## 2.0.12 (2023-12-09)

- Improved system commands execution

## 2.0.11 (2023-12-09)

- Small fixes

## 2.0.10 (2023-12-09)

- Updated locale

## 2.0.9 (2023-12-09)

- Added `Custom Commands` feature; plugin allows to easily create and execute custom commands
- Added new features to `Files I/O`: downloading files, copying files and dirs, moving files and dirs

## 2.0.8 (2023-12-08)

- Improved Web Search plugin

## 2.0.7 (2023-12-08)

- Improved code execution with Code Interpreter / Files I/O plugins

## 2.0.6 (2023-12-08)

- Added layout density configuration

## 2.0.5 (2023-12-08)

- Added support for external CSS
- Added custom fonts support
- Improved material theme support

## 2.0.4 (2023-12-08)

- Added configuration options for plugins: Files I/O, Code Interpreter
- UI fixes

## 2.0.3 (2023-12-07)

- Python code execution fix

## 2.0.2 (2023-12-07)

- Added python command template settings
- Added layout state restore
- Refactored settings
- Improved settings window
- Bugfixes

## 2.0.1 (2023-12-07)

- Fixed settings dialog initialization
- Fixed models.json migration
- Added enter key behaviour settings
- Added font size settings for input and context list
- Added ctx auto-summary settings
- Added python command plugin settings

## 2.0.0 (2023-12-05)

New features in version 2.0.0:

- Added support for new models: GPT-4 Turbo, GPT-4 Vision, and DALL-E 3
- Integrated Langchain with support for any model it provides
- Assistants API and simple assistant configuration setup
- Vision and image analysis capabilities through GPT-4 Vision
- Image generation with DALL-E 3
- File and attachment support including upload, download, and management
- New built-in notepad feature
- Multiple assistants support
- Command execution support
- Filesystem access allows GPT to read and write files
- Asynchronous (stream) mode added
- Local Python code interpreter that enables code execution by GPT
- System command executions directly from GPT
- Voice synthesis provided via Microsoft Azure TTS and OpenAI TTS (Text-To-Speech)
- Voice recognition provided by OpenAI Whisper
- Automatic summarization of context titles
- Upgraded Web Browser plugin
- More precise token calculation functionality
- Added output markup highlight
- Improved UX
- Bug fixes
- Plus additional enhancements and expanded capabilities

## 0.9.6 (2023.04.16)

- Added real-time logger
- Improved debug mode

## 0.9.5 (2023.04.16)

- Added web plugin (adds access to the Internet using Google Custom Search Engine and Wikipedia API)
- Added voice output plugin (adds voice synthesis using Microsoft Azure)

## 0.9.4 (2023.04.15)

- Added plugins support

## 0.9.3 (2023.04.14)

- Packed into PyPI package

## 0.9.2 (2023.04.12)

- Added theme color settings
- Small UI fixes

## 0.9.1 (2023.04.11)

- Added organization key configuration (by @kaneda2004, PR#1)
- Added config versions patching

## 0.9.0 (2023.04.09)

- Initial release