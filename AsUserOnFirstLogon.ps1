winget install 9WZDNCRFJ4MV --silent --accept-source-agreements --accept-package-agreements --force --source msstore;
winget install Google.Chrome --silent --accept-source-agreements --accept-package-agreements --force --source winget;
winget install Adobe.Acrobat.Reader.64-bit --silent --accept-source-agreements --accept-package-agreements --force --source winget;
winget install Oracle.JavaRuntimeEnvironment --silent --accept-source-agreements --accept-package-agreements --force --source winget;
Set-WinUserLanguageList -LanguageList fr-CA -Force;
Start-Process "cmd.exe" -ArgumentList '/c DISM.exe /online /Enable-Feature /FeatureName:NetFx3' -Verb RunAs;
Start-Process "powershell.exe" -ArgumentList "Install-Module 'LSUClient' Force; Import-Module 'LSUClient'; Write-Host 'Installing driver updates. The computer will reboot.'; Write-Host 'Loading update list...'; $updates = Get-LSUpdate; $updates | Select-Object -ExpandProperty Title; $updates | Install-LSUpdate -Verbose" -Verb RunAs;
explorer.exe "Z:\DRV";
powercfg /Change -monitor-timeout-ac 0;
powercfg /Change -monitor-timeout-dc 0;
powercfg /Change -standby-timeout-ac 0;
powercfg /Change -standby-timeout-dc 0;
Function New-Shortcut { param( [parameter(Mandatory=$true)][string]$ShortcutFullName, [parameter(Mandatory=$true)][string]$ShortcutTarget ) $ShortcutObject = New-Object -comObject WScript.Shell; $Shortcut = $ShortcutObject.CreateShortcut($ShortcutFullName); $Shortcut.TargetPath = $ShortcutTarget; $Shortcut.Save(); }
New-Shortcut -ShortcutFullName "$env:USERPROFILE\\Desktop\\Ce PC.lnk" -ShortcutTarget "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}";
New-Shortcut -ShortcutFullName "$env:USERPROFILE\\Desktop\\Panneau de configuration.lnk" -ShortcutTarget "c:\\windows\\system32\\control.exe";
Remove-Item "$env:PUBLIC\\Desktop\\Microsoft Edge.lnk";
