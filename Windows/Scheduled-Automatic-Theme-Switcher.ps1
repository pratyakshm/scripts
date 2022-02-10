$theme = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
Write-Host " "
Write-Host "Automatic theme switcher by pratyakshm"
Write-Host " "
Write-Host " "
$time1 = Read-Host "Time when PC switches to light theme"
$action1 = New-ScheduledTaskAction -Execute '%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe' -Argument "Set-ItemProperty -Path $theme -Name 'AppsUseLightTheme' -Type DWord -Value 1 -Force"
$trigger1 = New-ScheduledTaskTrigger -Daily -At $time1
$time2 = Read-Host "Time when PC switches to dark theme"
$action2 = New-ScheduledTaskAction -Execute '%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe' -Argument "Set-ItemProperty -Path $theme -Name 'AppsUseLightTheme' -Type DWord -Value 0 -Force"
$trigger2 = New-ScheduledTaskTrigger -Daily -At $time2
Register-ScheduledTask -Action $action1 -Trigger $trigger1 -TaskPath "Themes" -TaskName "Light theme" -Force | Out-Null
Register-ScheduledTask -Action $action2 -Trigger $trigger2 -TaskPath "Themes" -TaskName "Dark theme" -Force | Out-Null
Write-Host " "
Write-Host "Your PC will switch to Light theme at $time1 and Dark theme at $time2."
