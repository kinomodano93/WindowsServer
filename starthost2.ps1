[cmdletbinding()]
Param($vmhost = ‘CWA-HOST2')
$VMtoStart = Get-VM -ComputerName $vmhost| where notes -contains 'HOST2'
foreach ($cn in $VMtoStart)
{Start-VM $cn.name -asjob}