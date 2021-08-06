[CmdletBinding()]
param($TIME_LIMIT, $EMAIL_ADDRESS)

Write-Host "I'm running in a PowerShell script!!"

$dte = Get-Date
$tl = $dte.AddHours([int]($TIME_LIMIT.split(" "))[0])
$disp_name = $EMAIL_ADDRESS.split("@")[0]
New-ADUser -AccountExpirationDate $tl -EmailAddress $EMAIL_ADDRESS -DisplayName $disp_name 
