$time = Read-Host "At what time of the day do you want to Fresh start your PC? (instance: 9am or 6pm)" 
$day = Read-Host "Enter the day of week you want to Fresh install your PC (instance: Friday NOT Fri)"
$action = New-ScheduledTaskAction -Execute 'systemreset' -Argument '-cleanpc'
$trigger = New-ScheduledTaskTrigger -Weekly -WeeksInterval 1 -DaysOfWeek $day -At $time
Register-ScheduledTask -Action $action -Trigger $trigger -RunLevel Highest -TaskPath "Maintenance" -TaskName "Reset this PC" 
