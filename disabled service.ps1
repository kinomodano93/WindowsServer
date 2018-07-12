

“Set-Service ServiceName -StartupType Disabled
Stop-Service ServiceName”

gwmi win32_service -filter "name = 'bits' OR name = 'wuauserv'"