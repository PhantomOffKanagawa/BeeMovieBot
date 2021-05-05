#Persistent


#e::
Loop
{
    FileReadLine, line, .\script.txt, %A_Index%
    if ErrorLevel
        break
    ; Send, %line%
    Send, /nick %line%
    SendInput {enter}
    Sleep, 2000
}
MsgBox, The end of the file has been reached or there was a problem.
return
return

#p::Pause,Toggle