Set objShell = CreateObject("WScript.Shell")

' 1. The Opening (5 second delay)
WScript.Sleep 5000
MsgBox "Huh? Where am i?", 16, "System Error"

' 2. The Realization (2 second delay)
WScript.Sleep 2000
MsgBox "Oh yeah, im your PC! you used a special feature that makes me alive!", 16, "System"

' 3. The Identity Check (1 second delay)
WScript.Sleep 1000
ans1 = MsgBox("Hmm... Are you my... User?", 4+64, "Question")
If ans1 = 6 Then ' 6 = Yes
    MsgBox "Omg! See? I become alive!", 64, "Happy"
Else
    MsgBox "Then who are you? :/", 64, "Confused"
End If

' 4. The Activity (3 second delay)
WScript.Sleep 3000
ans2 = MsgBox("Well... What are we doing today? Master? Watch Youtube?", 4+16, "Suggestion")
If ans2 = 6 Then
    MsgBox "Yay! :D", 64, "Excited"
    ' Opens YouTube in the default browser
    objShell.Run "https://www.youtube.com"
Else
    MsgBox "Oh? Are you on a business?", 64, "Serious"
End If

' 5. The Helper Offer (800ms delay)
WScript.Sleep 800
ans3 = MsgBox("You can use me your Helper :D", 4+64, "Offer")
If ans3 = 6 Then
    MsgBox "Horayyyyy!!!! :D", 64, "Happy"
Else
    MsgBox "Oh! You use chatgpt right? Heh!", 64, "Jealous"
End If

' 6. The Age Input (2 second delay)
WScript.Sleep 2000
userAge = InputBox("Soo... Uhh... What is your age?", "Age Check")

' Logic for Age
If IsNumeric(userAge) Then
    If CInt(userAge) <= 18 Then
        MsgBox "Oh! you are pretty young!", 64, "Observation"
    ElseIf CInt(userAge) > 18 And CInt(userAge) <= 100 Then
        MsgBox "Hmm... Pretty old man right? Haha!", 64, "Joke"
    End If
End If

' 7. The Protection (4 second delay)
WScript.Sleep 4000
' 3 = Yes/No/Cancel, but we will use 4 (Yes/No) and change the button text in our minds
' VBScript doesn't allow custom button text easily, so we use Yes (Thank you) / No (No thanks)
ans4 = MsgBox("I will protect you from viruses anytime!" & vbCrLf & "(Yes = Thank you / No = No thanks)", 4+64, "Guardian")
If ans4 = 6 Then
    MsgBox "Your welcome :)", 64, "Friend"
Else
    MsgBox "Oh! You might be using Another antivirus right?", 64, "Understood"
End If

' 8. The Goodbye (5 second delay)
WScript.Sleep 5000
MsgBox "Alright, Have a good day! good bye!", 48, "Warning"