' --------------------------------------------------
' Project: Talking-Desktop
' Version: 1.1.0 Alpha (Rebuild)
' Developer: RetroPlayDev
' Description: A sentient PC interaction script.
' License: BSD-3-Clause
' --------------------------------------------------

Set objShell = CreateObject("WScript.Shell")

' 1. THE AWAKENING (5 second delay)
WScript.Sleep 5000
reply1 = InputBox("Huh? Where am i?", "System Error - Created by RetroPlayDev")

' 2. THE REALIZATION (2 second delay)
WScript.Sleep 2000
reply2 = InputBox("Oh yeah, im your PC! you used a special feature that makes me alive!", "System Info")

' 3. IDENTITY CHECK (1 second delay)
WScript.Sleep 1000
ans1 = InputBox("Hmm... Are you my... User? (Yes/No)", "Question")

If LCase(ans1) = "yes" Then
    MsgBox "Omg! See? I become alive!", 64, "Happy"
Else
    MsgBox "Then who are you? :/", 64, "Confused"
End If

' 4. ACTIVITY SUGGESTION (3 second delay)
WScript.Sleep 3000
ans2 = InputBox("Well... What are we doing today? Master? Watch Youtube? (Yes/No)", "Suggestion")

If LCase(ans2) = "yes" Then
    MsgBox "Yay! :D", 64, "Excited"
    objShell.Run "https://www.youtube.com"
Else
    MsgBox "Oh? Are you on a business?", 64, "Serious"
End If

' 5. THE HELPER & JOKE ENGINE (800ms delay)
WScript.Sleep 800
chat = InputBox("You can use me as your Helper :D" & vbCrLf & "(Try asking: 'Tell me a joke')", "Helper Menu")
cleanChat = LCase(chat)

' --- KEYWORD SCANNER ---
If InStr(cleanChat, "joke") > 0 Then
    Randomize
    Dim jokes(9)
    jokes(0) = "Why did the computer go to the doctor? Because it had a virus!"
    jokes(1) = "What do you call a computer that sings? A Dell!"
    jokes(2) = "How many programmers does it take to change a lightbulb? None, that's hardware!"
    jokes(3) = "Why was the cell phone wearing glasses? It lost its contacts!"
    jokes(4) = "Why did the web developer leave the restaurant? Because of the table layout."
    jokes(5) = "I asked my computer for a joke... it showed me my internet speed. Ouch."
    jokes(6) = "What is a computer's favorite snack? Micro-chips!"
    jokes(7) = "Why did the PowerPoint cross the road? To get to the other slide!"
    jokes(8) = "Where do keyboards hang out? The Space Bar!"
    jokes(9) = "Why was the computer cold? It left its Windows open!"
    
    MsgBox "Here is one: " & jokes(Int(10 * Rnd)), 64, "Joke Generator"

ElseIf InStr(cleanChat, "retroplaydev") > 0 Then
    MsgBox "That's my creator! He is a legendary developer!", 64, "Easter Egg"

Else
    MsgBox "Hoaryyyyy!!!! :D I'm just happy to be talking to you!", 64, "Happy"
End If

' 6. AGE CHECK (2 second delay)
WScript.Sleep 2000
userAge = InputBox("Soo... Uhh... What is your age?", "Age Check")
If IsNumeric(userAge) Then
    If CInt(userAge) <= 18 Then
        MsgBox "Oh! you are pretty young!", 64, "Observation"
    Else
        MsgBox "Hmm... Pretty old man right? Haha!", 64, "Joke"
    End If
End If

' 7. PROTECTION (4 second delay)
WScript.Sleep 4000
ans4 = MsgBox("I will protect you from viruses anytime!" & vbCrLf & "(Yes = Thank you / No = No thanks)", 4+64, "Guardian")
If ans4 = 6 Then
    MsgBox "Your welcome :)", 64, "Friend"
Else
    MsgBox "Oh! You might be using Another antivirus right?", 64, "Understood"
End If

' 8. GOODBYE (5 second delay)
WScript.Sleep 5000
MsgBox "Alright, Have a good day! good bye!", 48, "Talking-Desktop v1.1.0 Alpha"
