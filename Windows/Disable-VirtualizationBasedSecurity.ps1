Write-Host "pratyakshm's WinRice - Virtualization-based security disabler"
Write-Host " "
Write-Host " "
Write-Host "Checking if this device supports MBEC..."
$mbec = Get-CimInstance -ClassName Win32_DeviceGuard -Namespace root\Microsoft\Windows\DeviceGuard | Select-Object AvailableSecurityProperties
if ($mbec -contains 7)
{
    Write-Host "Since this device natively supports MBEC, Virtualization-based security won't be disabled."
	return
}
Write-Host "This device doesn't support MBEC."
Start-Sleep -Milliseconds 100
Write-Host "Disabling Virtualization-based security will also disable features which are powered by Hyper-V like WSL and WSA."
$ans = Read-Host "Would you like to proceed? [y/n]"
if ($ans -like "n")
{
    return
}
Write-Host "Disabling Virtualization-based security..."
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" -Name "Enabled" -Type DWord -Value 0
bcdedit.exe /set hypervisorlaunchtype off | Out-Null
Start-Sleep -Milliseconds 100
Write-Host "Disabled Virtualization-based security."
Start-Sleep -Milliseconds 400

Write-Host " "
Write-Host "Notes: "
Write-Host " - See https://docs.microsoft.com/en-us/windows/security/threat-protection/device-guard/enable-virtualization-based-protection-of-code-integrity."
Write-Host " - Read https://github.com/pratyakshm/WinRice/blob/main/doc/Main-brief.md#virtualization-based-security for more."

Write-Host " "

Write-Host "Restarting this device in 10 seconds."
for ($time = 10; $time -ge 0 ; $time--)
{   
    Start-Sleep 1
    Write-Progress -Activity "Device restart" -Status "Restarting in $time seconds."
}
Restart-Computer
