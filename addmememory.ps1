$VMs=('CWA-MKTG-SVR (192.168.1.47)')

ForEach ($VM in $VMs) {

$VM

Get-VMMemory $VM

Set-VMMemory $VM -StartupBytes 10GB

Get-VMMemory $VM

}