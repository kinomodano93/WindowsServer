#New Storage Location
$StoragePath = "\\SMB01\VMs01\"
#VMs which will be migrated Get-VM will migrate all VMs
$VMs = Get-VM

Foreach ($VM in $VMs) {
$VMStorage = $StoragePath + $VM.Name
Write-Host "Moving VM:" $VM.name "to" $VMStorage
Move-VMStorage -VMName $VM.name -DestinationStoragePath $VMStorage
}


# https://www.thomasmaurer.ch/2015/07/move-multipe-hyper-v-virtual-machines-with-live-storage-migration-via-windows-powershell/