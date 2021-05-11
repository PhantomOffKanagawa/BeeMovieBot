#NoEnv
SendMode Input
#SingleInstance force

IniRead, Index, .\var.ini, variables, bee
Index++
FileReadLine, line, .\script.txt, %Index%

if Not WinActive("#general - Discord")
	Send, ^{Tab}
	Sleep, 200
if WinActive("#general - Discord")
	Send, %line%
	Send, {Enter}
	IniWrite, %Index%, .\var.ini, variables, line