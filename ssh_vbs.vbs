Dim WshShell
Set WshShell=WScript.CreateObject("WScript.Shell")
WshShell.Run "cmd.exe"
WScript.Sleep 100
WshShell.SendKeys "ssh 用户名@ip地址"
WshShell.SendKeys "{ENTER}"
WScript.Sleep 1000
WshShell.SendKeys "密码"
WshShell.SendKeys "{ENTER}"