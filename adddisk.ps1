$vmname = "CWA-AVAYA-SVR"

Get-VM $vmname

STOP-VM -vmname "$vmname" -Verbose

New-VHD -SizeBytes 60GB 'C:\ClusterStorage\Volume1\CWA_PHONE_SVR\CWA-PHONE-SVR\disk-0.vhdx'


Add-VMHardDiskDrive -VMName $vmname `
-Path “C:\ClusterStorage\Volume1\CWA_PHONE_SVR\CWA-PHONE-SVR\disk-0.vhdx” `
-ControllerType IDE -ControllerNumber 0 -ControllerLocation 1

START-VM -vmname "$vmname" -Verbose

Get-VM -VMName $vmname | Select-Object VMId | Get-VHD | `
Format-List Path,VhdFormat,VhdType,Size


