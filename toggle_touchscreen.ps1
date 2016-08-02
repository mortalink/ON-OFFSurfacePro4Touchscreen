import-Module ./DeviceManagement.psd1

$Device = 'Intel(R) Precise Touch Device'
$Status = Get-Device | Where-Object -Property Name -eq $Device | foreach {$_.ConfigurationFlags}
If ($Status -eq ‘CONFIGFLAG_DISABLED’) {
$deviceName = 'Intel(R) Precise Touch Device'; Get-Device | Where-Object -Property Name -eq $deviceName | Enable-Device -Confirm:$false
}
Else { 
$deviceName = 'Intel(R) Precise Touch Device'; Get-Device | Where-Object -Property Name -eq $deviceName | Disable-Device -Confirm:$false
}