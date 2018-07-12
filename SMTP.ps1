#STOP
$SMTP=[adsi]"IIS://192.168.1.6/SMTPSVC/1"
$SMTP.ServerState = 4
$SMTP.SetInfo()

#Start
$SMTP=[adsi]"IIS://192.168.1.6/SMTPSVC/1"
$SMTP.ServerState = 2
$SMTP.SetInfo()