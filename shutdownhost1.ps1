[cmdletbinding()]
Param($vmhost = 'CWA-HOST1')
$runningVM = Get-VM -ComputerName $vmhost| where state -eq 'running'
foreach ($cn in $runningVM)
{Stop-VM $cn.name -asjob}