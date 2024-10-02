# PowerShell Core Test Status

Testing has been a major part of PowerShell since its inception and PowerShell Core is no exception to that. We will continue to add tests to the repository over time, but we did not want to wait for the  

## Test Information

Here are some statistics about our current test coverage:

- More than 3000 tests have been created and are part of the repository
- More than 2200 tests are run as part of our CI system
    - More than 1000 tests have been created to validate the PowerShell Core Engine and Language
    - More than 1200 tests have been created to validate the PowerShell Core cmdlets

## PowerShell Cmdlets
The follow table represents the test coverage of the PowerShell Core Cmdlets in relation to the delivery platform as of 2016-08-17:

| Name | Linux | Windows | Test Coverage |
|---|---|---|:---:|
|Get-Acl||delivered||
|Set-Acl||delivered||
|Export-Alias|delivered|delivered|yes|
|Get-Alias|delivered|delivered|adhoc|
|Import-Alias|delivered|delivered|yes|
|New-Alias|delivered|delivered|yes|
|Set-Alias|delivered|delivered|yes|
|Compress-Archive|delivered|delivered|yes|
|Expand-Archive|delivered|delivered|yes|
|Register-ArgumentCompleter|delivered|delivered|yes|
|Get-AuthenticodeSignature||delivered||
|Set-AuthenticodeSignature||delivered||
|Export-BinaryMiLog||delivered||
|Import-BinaryMiLog||delivered||
|Get-ChildItem|delivered|delivered|yes|
|Get-CimAssociatedInstance||delivered||
|Get-CimClass||delivered|yes|
|Register-CimIndicationEvent||delivered||
|Get-CimInstance||delivered||
|New-CimInstance||delivered||
|Remove-CimInstance||delivered||
|Set-CimInstance||delivered||
|Invoke-CimMethod||delivered||
|Get-CimSession||delivered||
|New-CimSession||delivered||
|Remove-CimSession||delivered||
|New-CimSessionOption||delivered||
|Export-Clixml|delivered|delivered|yes|
|Import-Clixml|delivered|delivered|yes|
|Find-Command|delivered|delivered|adhoc|
|Get-Command|delivered|delivered|yes|
|Invoke-Command|delivered|delivered|yes|
|Measure-Command|delivered|delivered|yes|
|Rename-Computer||delivered||
|Restart-Computer||delivered||
|Stop-Computer||delivered||
|Get-ComputerInfo||delivered||
|Test-Connection||delivered||
|Add-Content|delivered|delivered|yes|
|Clear-Content|delivered|delivered|yes|
|Get-Content|delivered|delivered|yes|
|Set-Content|delivered|delivered|yes|
|Get-Credential|delivered|delivered|adhoc|
|ConvertFrom-Csv|delivered|delivered|yes|
|ConvertTo-Csv|delivered|delivered|yes|
|Export-Csv|delivered|delivered|yes|
|Import-Csv|delivered|delivered|yes|
|Get-Culture|delivered|delivered|yes|
|Format-Custom|delivered|delivered|yes|
|Get-Date|delivered|delivered|yes|
|Set-Date|delivered|delivered||
|Write-Debug|delivered|delivered|yes|
|Wait-Debugger|delivered|delivered||
|Out-Default|delivered|delivered|adhoc|
|Find-DscResource|delivered|delivered||
|Register-EngineEvent|delivered|delivered|yes|
|Write-Error|delivered|delivered|yes|
|Get-Event|delivered|delivered|yes|
|New-Event|delivered|delivered|yes|
|Remove-Event|delivered|delivered|yes|
|Unregister-Event|delivered|delivered|yes|
|Wait-Event|delivered|delivered|yes|
|Get-EventSubscriber|delivered|delivered|yes|
|Get-ExecutionPolicy|delivered|delivered|yes|
|Set-ExecutionPolicy|delivered|delivered|yes|
|Invoke-Expression|delivered|delivered|yes|
|Out-File|delivered|delivered|yes|
|Unblock-File||delivered||
|New-FileCatalog||delivered|yes|
|Test-FileCatalog||delivered|yes|
|Get-FileHash|delivered|delivered|yes|
|Export-FormatData|delivered|delivered|yes|
|Get-FormatData|delivered|delivered|yes|
|Update-FormatData|delivered|delivered|yes|
|New-Guid|delivered|delivered|yes|
|Get-Help|delivered|delivered|yes|
|Save-Help|delivered|delivered|adhoc|
|Update-Help|delivered|delivered|adhoc|
|Format-Hex|delivered|delivered|yes|
|Add-History|delivered|delivered|adhoc|
|Clear-History|delivered|delivered|adhoc|
|Get-History|delivered|delivered|adhoc|
|Invoke-History|delivered|delivered|adhoc|
|Get-Host|delivered|delivered|yes|
|Out-Host|delivered|delivered|yes|
|Read-Host|delivered|delivered|adhoc|
|Write-Host|delivered|delivered|yes|
|Write-Information|delivered|delivered|adhoc|
|Get-InstalledModule|delivered|delivered|yes|
|Get-InstalledScript|delivered|delivered||
|Clear-Item|delivered|delivered|adhoc|
|Copy-Item|delivered|delivered|yes|
|Get-Item|delivered|delivered|yes|
|Invoke-Item|delivered|delivered|yes|
|Move-Item|delivered|delivered|adhoc|
|New-Item|delivered|delivered|yes|
|Remove-Item|delivered|delivered|yes|
|Rename-Item|delivered|delivered|adhoc|
|Set-Item|delivered|delivered|adhoc|
|Clear-ItemProperty|delivered|delivered|adhoc|
|Copy-ItemProperty|delivered|delivered|adhoc|
|Get-ItemProperty|delivered|delivered|yes|
|Move-ItemProperty|delivered|delivered||
|New-ItemProperty|delivered|delivered|adhoc|
|Remove-ItemProperty|delivered|delivered|adhoc|
|Rename-ItemProperty|delivered|delivered|adhoc|
|Set-ItemProperty|delivered|delivered|yes|
|Get-ItemPropertyValue|delivered|delivered||
|Debug-Job|delivered|delivered|adhoc|
|Get-Job|delivered|delivered|adhoc|
|Receive-Job|delivered|delivered|yes|
|Remove-Job|delivered|delivered|adhoc|
|Start-Job|delivered|delivered|yes|
|Stop-Job|delivered|delivered|adhoc|
|Wait-Job|delivered|delivered|adhoc|
|ConvertFrom-Json|delivered|delivered|yes|
|ConvertTo-Json|delivered|delivered|yes|
|Format-List|delivered|delivered|yes|
|Get-LocalGroup||delivered||
|New-LocalGroup||delivered||
|Remove-LocalGroup||delivered||
|Rename-LocalGroup||delivered||
|Set-LocalGroup||delivered||
|Add-LocalGroupMember||delivered||
|Get-LocalGroupMember||delivered||
|Remove-LocalGroupMember||delivered||
|Import-LocalizedData|delivered|delivered|yes|
|Disable-LocalUser||delivered||
|Enable-LocalUser||delivered||
|Get-LocalUser||delivered||
|New-LocalUser||delivered||
|Remove-LocalUser||delivered||
|Rename-LocalUser||delivered||
|Set-LocalUser||delivered||
|Get-Location|delivered|delivered|yes|
|Pop-Location|delivered|delivered|yes|
|Push-Location|delivered|delivered|yes|
|Set-Location|delivered|delivered|yes|
|Get-LogProperties||delivered||
|Set-LogProperties||delivered||
|Add-Member|delivered|delivered|yes|
|Get-Member|delivered|delivered|yes|
|Find-Module|delivered|delivered|adhoc|
|Get-Module|delivered|delivered|yes|
|Import-Module|delivered|delivered|yes|
|Install-Module|delivered|delivered|adhoc|
|New-Module|delivered|delivered|yes|
|Publish-Module|delivered|delivered||
|Remove-Module|delivered|delivered|yes|
|Save-Module|delivered|delivered|adhoc|
|Uninstall-Module|delivered|delivered||
|Update-Module|delivered|delivered||
|New-ModuleManifest|delivered|delivered|yes|
|Test-ModuleManifest|delivered|delivered||
|Update-ModuleManifest|delivered|delivered||
|Export-ModuleMember|delivered|delivered|yes|
|Out-Null|delivered|delivered|yes|
|Compare-Object|delivered|delivered|yes|
|ForEach-Object|delivered|delivered|yes|
|Group-Object|delivered|delivered|yes|
|Measure-Object|delivered|delivered|yes|
|New-Object|delivered|delivered|yes|
|Select-Object|delivered|delivered|yes|
|Sort-Object|delivered|delivered|yes|
|Tee-Object|delivered|delivered|yes|
|Where-Object|delivered|delivered|yes|
|Register-ObjectEvent|delivered|delivered|yes|
|Write-Output|delivered|delivered|yes|
|Find-Package|delivered|delivered|yes|
|Get-Package|delivered|delivered|yes|
|Install-Package|delivered|delivered|yes|
|Save-Package|delivered|delivered|yes|
|Uninstall-Package|delivered|delivered|yes|
|Find-PackageProvider|delivered|delivered|yes|
|Get-PackageProvider|delivered|delivered|yes|
|Import-PackageProvider|delivered|delivered|yes|
|Install-PackageProvider|delivered|delivered|yes|
|Get-PackageSource|delivered|delivered|yes|
|Register-PackageSource|delivered|delivered|yes|
|Set-PackageSource|delivered|delivered|yes|
|Unregister-PackageSource|delivered|delivered|yes|
|Convert-Path|delivered|delivered|adhoc|
|Join-Path|delivered|delivered|yes|
|Resolve-Path|delivered|delivered|adhoc|
|Split-Path|delivered|delivered|yes|
|Test-Path|delivered|delivered|yes|
|Import-PowerShellDataFile|delivered|delivered|yes|
|Debug-Process|delivered|delivered||
|Get-Process|delivered|delivered|yes|
|Start-Process|delivered|delivered|yes|
|Stop-Process|delivered|delivered|yes|
|Wait-Process|delivered|delivered||
|Write-Progress|delivered|delivered|yes|
|Disable-PSBreakpoint|delivered|delivered||
|Enable-PSBreakpoint|delivered|delivered||
|Get-PSBreakpoint|delivered|delivered|yes|
|Remove-PSBreakpoint|delivered|delivered|yes|
|Set-PSBreakpoint|delivered|delivered|yes|
|Get-PSCallStack|delivered|delivered|adhoc|
|Set-PSDebug|delivered|delivered|yes|
|Get-PSDrive|delivered|delivered|yes|
|New-PSDrive|delivered|delivered|yes|
|Remove-PSDrive|delivered|delivered|yes|
|Enter-PSHostProcess|delivered|delivered|yes|
|Exit-PSHostProcess|delivered|delivered|yes|
|Get-PSHostProcessInfo|delivered|delivered|fails on Linux|
|Get-PSProvider|delivered|delivered|yes|
|Get-PSReadlineKeyHandler|delivered|delivered|yes|
|Remove-PSReadlineKeyHandler|delivered|delivered||
|Set-PSReadlineKeyHandler|delivered|delivered|yes|
|Get-PSReadlineOption|delivered|delivered|yes|
|Set-PSReadlineOption|delivered|delivered|yes|
|Get-PSRepository|delivered|delivered||
|Register-PSRepository|delivered|delivered||
|Set-PSRepository|delivered|delivered||
|Unregister-PSRepository|delivered|delivered||
|New-PSRoleCapabilityFile|delivered|delivered||
|Connect-PSSession|delivered|delivered|adhoc|
|Disconnect-PSSession|delivered|delivered|adhoc|
|Enter-PSSession|delivered|delivered|adhoc|
|Exit-PSSession|delivered|delivered|adhoc|
|Get-PSSession|delivered|delivered|adhoc|
|New-PSSession|delivered|delivered|yes|
|Receive-PSSession|delivered|delivered|adhoc|
|Remove-PSSession|delivered|delivered|yes|
|Get-PSSessionCapability|delivered|delivered||
|Disable-PSSessionConfiguration|delivered|delivered||
|Enable-PSSessionConfiguration|delivered|delivered||
|Get-PSSessionConfiguration|delivered|delivered||
|Register-PSSessionConfiguration|delivered|delivered|yes|
|Set-PSSessionConfiguration|delivered|delivered||
|Unregister-PSSessionConfiguration|delivered|delivered|yes|
|New-PSSessionConfigurationFile|delivered|delivered|yes|
|Test-PSSessionConfigurationFile|delivered|delivered||
|New-PSSessionOption|delivered|delivered||
|Disable-PSTrace||delivered||
|Enable-PSTrace||delivered||
|New-PSTransportOption|delivered|delivered||
|Disable-PSWSManCombinedTrace||delivered||
|Enable-PSWSManCombinedTrace||delivered||
|Get-Random|delivered|delivered|yes|
|Invoke-RestMethod|delivered|delivered|yes|
|Find-RoleCapability|delivered|delivered||
|Debug-Runspace|delivered|delivered||
|Get-Runspace|delivered|delivered|yes|
|Disable-RunspaceDebug|delivered|delivered||
|Enable-RunspaceDebug|delivered|delivered||
|Get-RunspaceDebug|delivered|delivered|yes|
|Find-Script|delivered|delivered||
|Install-Script|delivered|delivered||
|Publish-Script|delivered|delivered||
|Save-Script|delivered|delivered||
|Uninstall-Script|delivered|delivered||
|Update-Script|delivered|delivered||
|New-ScriptFileInfo|delivered|delivered||
|Test-ScriptFileInfo|delivered|delivered||
|Update-ScriptFileInfo|delivered|delivered||
|ConvertFrom-SddlString||delivered||
|ConvertFrom-SecureString|delivered|delivered|yes|
|ConvertTo-SecureString|delivered|delivered|yes|
|Get-Service||delivered||
|New-Service||delivered||
|Restart-Service||delivered||
|Resume-Service||delivered||
|Set-Service||delivered||
|Start-Service||delivered||
|Stop-Service||delivered||
|Suspend-Service||delivered||
|Start-Sleep|delivered|delivered|yes|
|Set-StrictMode|delivered|delivered|yes|
|Out-String|delivered|delivered|yes|
|Select-String|delivered|delivered|yes|
|ConvertFrom-StringData|delivered|delivered|yes|
|Format-Table|delivered|delivered|yes|
|New-TemporaryFile|delivered|delivered|yes|
|New-TimeSpan|delivered|delivered|yes|
|Get-TimeZone||delivered|yes|
|Set-TimeZone||delivered|yes|
|Start-Trace||delivered||
|Stop-Trace||delivered||
|Start-Transcript|delivered|delivered|yes|
|Stop-Transcript|delivered|delivered|yes|
|Add-Type|delivered|delivered|yes|
|Get-TypeData|delivered|delivered|yes|
|Remove-TypeData|delivered|delivered|yes|
|Update-TypeData|delivered|delivered|yes|
|Get-UICulture|delivered|delivered|yes|
|Get-Unique|delivered|delivered|yes|
|Clear-Variable|delivered|delivered|yes|
|Get-Variable|delivered|delivered|yes|
|New-Variable|delivered|delivered|yes|
|Remove-Variable|delivered|delivered|yes|
|Set-Variable|delivered|delivered|yes|
|Write-Verbose|delivered|delivered|yes|
|Write-Warning|delivered|delivered|yes|
|Invoke-WebRequest|delivered|delivered|yes|
|Format-Wide|delivered|delivered|yes|
|Get-WinEvent||delivered|yes|
|New-WinEvent||delivered||
|Connect-WSMan||delivered||
|Disconnect-WSMan||delivered||
|Test-WSMan||delivered||
|Invoke-WSManAction||delivered||
|Disable-WSManCredSSP||delivered||
|Enable-WSManCredSSP||delivered||
|Get-WSManCredSSP||delivered||
|Get-WSManInstance||delivered||
|New-WSManInstance||delivered||
|Remove-WSManInstance||delivered||
|Set-WSManInstance||delivered||
|Set-WSManQuickConfig||delivered||
|New-WSManSessionOption||delivered||
|Disable-WSManTrace||delivered||
|Enable-WSManTrace||delivered||
|ConvertTo-Xml|delivered|delivered|yes|
|Select-xml|delivered|delivered|yes|