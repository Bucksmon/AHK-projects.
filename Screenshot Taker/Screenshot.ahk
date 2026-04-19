; Variables
x := ""
title := "ahk_exe GTA5.exe"

1::

    if WinActive(title){

        Send, t/bf{Enter}
        Sleep, 500
        
        send, tEnter how many screenshots you want in (00) format:
        Input, x, L2 N ; N flag ensures only numbers are captured

        send, ^a
        send, {BackSpace}{Enter}
        x := x + 0

        WinGetPos, winX, winY, winWidth, winHeight, %title%
        winX := winX + 5 * 5
        winY := winY + 5 * 5

        if (x >= 20 || x = 0)

        {
            send, {Enter}t/bf{Enter}
            return
        }
        else{
            Loop, %x%{

                send, #{PrintScreen}
                sleep, 500

                send, {F3}
                sleep, 200

                MouseMove, %winX%, %winY%, 0
                sleep, 1000

                send, {WheelUp}{WheelUp}
                sleep, 500

                send, {F3}
                sleep, 200
            }
            send, t/bf{Enter}
        }
    }
    else{
        return
    }

return
2::
    ; Send Windows Key + Print Screen
    Send, {F7}
    sleep, 500

    Send, #!{PrintScreen}
    sleep, 500

    send, {F7}
return

3::
    ; Send Windows Key + Print Screen

    Send, #!{PrintScreen}

return

