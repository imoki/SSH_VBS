# SSH_VBS 
不使用密钥登录ssh的情况下。在windows下dos窗口中远程ssh登录常用基本命令
```
ssh 用户名@ip地址输入
```
然后就会弹出要求输入密码的提示，键入密码即可登录。
但是每次都要手动键入密码较为繁琐，因此可以采用本文的一键脚本登录ssh。
（也可以下载连接工具来记录登录密码，如：XShell, SecureCRT,Putty）

## VBS代码：
```
Dim WshShell
Set WshShell=WScript.CreateObject("WScript.Shell")
WshShell.Run "cmd.exe"
WScript.Sleep 100
WshShell.SendKeys "ssh 用户名@ip地址"
WshShell.SendKeys "{ENTER}"
WScript.Sleep 1000
WshShell.SendKeys "密码"
WshShell.SendKeys "{ENTER}"
```
将上述第5和第8行改为登录ssh所需的账户和密码，新建文件修改后缀名为vbs，粘贴上述代码。
要登陆时点击一下vbs文件即可自动填下密码登录ssh。

## 主要代码
```
WshShell.SendKeys "xxxx"
```
功能为模拟键盘输入命令，例如

```
WshShell.SendKeys "hi"
```
相当于用户用键盘输入hi

```
Dim WshShell  '声明变量并分配存储空间,变量名为WshShell
Set WshShell=WScript.CreateObject("WScript.Shell")  '创建WshShell对象以便后续能运行程序
WshShell.Run "cmd.exe"  '运行cmd.exe程序,即打开dos窗口
WScript.Sleep 100  '等待100ms
WshShell.SendKeys "ssh 用户名@ip地址"  '模拟键盘输入ssh 用户名@ip地址
WshShell.SendKeys "{ENTER}"  '输入回车
WScript.Sleep 1000  '因为输入ssh命令可能不会立即弹出输入密码的提示，所以等待1000ms
WshShell.SendKeys "密码"  '输入密码
WshShell.SendKeys "{ENTER}"  '输入回车
```