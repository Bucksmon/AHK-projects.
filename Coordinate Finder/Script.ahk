4::
; Detect screen resolution
ScreenWidth := A_ScreenWidth
ScreenHeight := A_ScreenHeight

; Display the coordinates of the mouse cursor
MouseGetPos, MouseX, MouseY
MsgBox, The cursor is currently at X: %MouseX% and Y: %MouseY%`nScreen Resolution: %ScreenWidth%x%ScreenHeight%
return
