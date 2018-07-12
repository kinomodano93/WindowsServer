[cmdletbinding()]
Param($vmhost = ‘CWA-HOST1')
$VMtoStart = Get-VM -ComputerName $vmhost| where notes -contains 'HOST1'
foreach ($cn in $VMtoStart)
{Start-VM $cn.name -asjob}