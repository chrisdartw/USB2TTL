On Error Resume Next 
 
strComputer = "." 
Set objWMIService = GetObject("winmgmts:" _ 
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2") 
 
Set colItems = objWMIService.ExecQuery("Select * from Win32_SerialPort") 
Set colItems = objWMIService.ExecQuery("Select * from WIN32_PnPEntity WHERE ClassGuid='{4d36e978-e325-11ce-bfc1-08002be10318}'") 

s = ""
For Each objItem in colItems 
    s = s + "Caption:    " & objItem.Caption & vbCrLf
    s = s + "HardwareID: " & objItem.HardwareID(0) & vbCrLf
    s = s + "" & vbCrLf
Next

Wscript.Echo s
