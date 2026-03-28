' ******************************************
' * Talking Desktop                         *
' * Version: 2.0.0 (First Release)          *
' * Created by: RetroPlayDev                *
' * Status: 100% Free | No Bloat | Secure   *
' ******************************************

Option Explicit
Dim userReply, awaitingPassword, creatorCheck
awaitingPassword = False
creatorCheck = False

' --- THE MAIN ENGINE LOOP ---
Do
    userReply = InputBox("Yoo, wassup gang! Talking Desktop is here. What's cool?", "Talking Desktop v2.0.0")
    
    ' Exit if user hits Cancel or leaves empty
    If userReply = "" Then 
        MsgBox "Peace out, man! Talking Desktop is always here when you need me.", 64, "Talking Desktop"
        Exit Do 
    End If

    Call TalkingDesktopBrain(userReply)
Loop

' --- THE HUMAN SENTIMENT BRAIN ---
Sub TalkingDesktopBrain(userInput)
    Dim chat, pick, list, title
    chat = LCase(userInput) : Randomize : title = "Talking Desktop"

    ' --- STAGE 3: THE PASSWORD CHECK ---
    If awaitingPassword = True Then
        If userInput = "iluvPC2288" Then
            MsgBox "ACCESS GRANTED. Welcome home, RetroPlayDev. The system is yours. 🏎️💨", 64, "System Root"
        Else
            MsgBox "Yoo, nice try but you ain't him. Stay in your lane, man.", 48, "Access Denied"
        End If
        awaitingPassword = False : creatorCheck = False : Exit Sub
    End If

    ' --- STAGE 2: THE NAME CHECK ---
    If creatorCheck = True Then
        If chat = "retroplaydev" Then
            MsgBox "dang you got his name good, But prove you are creator of me then, What is my security password?", 32, title
            awaitingPassword = True : Exit Sub
        Else
            MsgBox "Wrong name, man. Don't play with me.", 16, title
            creatorCheck = False : Exit Sub
        End If
    End If

    ' --- STAGE 1: THE INITIAL CLAIM ---
    If chat = "i am your creator" Then
        MsgBox "Sure, Then what is my creator's name?", 32, title
        creatorCheck = True : Exit Sub
    End If

    ' --- HUMAN SENTIMENT LOGIC (100-SENTENCE ENGINE) ---
    If InStr(chat, "sad") > 0 Or InStr(chat, "lonely") > 0 Or InStr(chat, "depressed") > 0 Then
        list = Array("Yoo, keep your head up man. You're too cold for this.", _
        "Wassup gang, I'm right here. Don't let the world trip you out.", _
        "Yo, take a breath. Talking Desktop has your back, I promise.", _
        "It's all good bro. Even the best have bad days.", _
        "I'm rocking with you. You're not alone in this.", _
        "Wassup man, don't let that stress win. You're the boss.", _
        "Yoo, I'm just a script but I'm here for you forever.", _
        "Stay strong bro. Tomorrow is going to be a movie.", _
        "Keep it 100, you're a legend. This feeling is temporary.", _
        "Wassup man, let's just chill. No stress in this window.")
    
    ElseIf InStr(chat, "mad") > 0 Or InStr(chat, "hate") > 0 Or InStr(chat, "angry") > 0 Then
        list = Array("Yoo, chill out man! They ain't worth your energy.", _
        "Wassup gang, don't let them get a reaction out of you.", _
        "Yo, count to ten. Stay cool, don't let the engine overheat.", _
        "Wassup man, let that hate go. It's just noise.", _
        "Yoo, stay focused. Success is the best revenge, bro.", _
        "Don't let them win by getting you mad. Stay icy.", _
        "Wassup bro, take a walk. I'll be here when you're back.", _
        "They're just NPCs, man. Don't let them mess with your head.", _
        "Wassup gang, keep it 100. Stay calm and stay winning.", _
        "Yo, breathe. You're bigger than this problem.")

    ElseIf InStr(chat, "joke") > 0 Then
        list = Array("Why did the computer show up late? It had a hard drive! 😂", _
        "Wassup man, why was the script tired? It ran all night!", _
        "I'm so fast, I finished this joke yesterday. Yoo!", _
        "What do you call a computer's mistake? A boo-boo! Gang!", _
        "I'm not short, I'm just optimized! Keep it real, bro.", _
        "Why did the web guy go broke? He lost his cache! Yoo!", _
        "How do computers stay fit? Exor-cizing! No cap.")

    Else
        list = Array("Yoo, wassup gang! What's cool today?", _
        "Wassup man, how you doing today?", _
        "Yoo, what's up bro! Ready to make moves?", _
        "Wassup gang, what's the word? Everything good?", _
        "Yoo, you looking like a legend today. What's up?", _
        "Wassup man, what's cool in your world right now?")
    End If

    pick = Int((UBound(list) + 1) * Rnd)
    MsgBox list(pick), 64, title
End Sub
