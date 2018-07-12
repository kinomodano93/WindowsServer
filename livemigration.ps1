$SourceHost = "HyperV01"
$DestinationHost = "HyperV02"
$VMsOnHost = Get-VM -ComputerName $SourceHost

foreach ($VM in $VMsOnHost){
   Write-Host ("Moving "+$VM.Name)
   Move-VM -ComputerName $SourceHost -Name $VM.Name -DestinationHost $DestinationHost -IncludeStorage
}