Option Explicit
Dim valUserIn
Dim objShell, RegLocate, RegLocate1
Set objShell = WScript.CreateObject("WScript.Shell")
On Error Resume Next
valUserIn = MsgBox("Acesso com VPN ? ",4,"Cloaked Select")
If valUserIn=vbYes Then
RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyServer"
objShell.RegWrite RegLocate,"192.168.xxx.xxx:XXXX","REG_SZ" 'INSIRA SEU PROXY E PORTA AQUI
RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable"
objShell.RegWrite RegLocate,"1","REG_DWORD"
MsgBox "Proxy ATIVADO"
else
RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyServer"
objShell.RegWrite RegLocate,"0.0.0.0:80","REG_SZ"
RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable"
objShell.RegWrite RegLocate,"0","REG_DWORD"
MsgBox "Proxy DESATIVADO"
End If
WScript.Quit