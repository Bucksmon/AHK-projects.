; AHK Script to read file rows and generate QR codes using qrencode

filePath := "C:\Users\Furqa\OneDrive\Desktop\QR\hi.txt"  

; QRencode executable path
qrencodePath := " "  ; Add Path accordingly 

; Output folder path
outputFolder := " "  ; Add Path accordingly

; Read File 
FileRead, fileContent, %filePath%
if ErrorLevel
{
    MsgBox, Could not read file.
    ExitApp
}

lines := StrSplit(fileContent, "`n")

Loop, % lines.MaxIndex()
{
    link := lines[A_Index]
    if (link = "")
        continue

    outputFile := outputFolder . "\QR_" . A_Index . ".png"

    ; QRencode command 
    RunWait, %ComSpec% /c ""%qrencodePath%" -o "%outputFile%" "%link%"", , Hide
}

MsgBox, QR codes have been generated successfully!
ExitApp
