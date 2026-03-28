' --- THE GHOST'S 100-SENTENCE BRAIN ---
Sub GhostBrain(userInput)
    Dim chat, pick, list, title
    chat = LCase(userInput) : Randomize : title = "Ghost Friend"

    ' 1. THE HEALING VIBE (For Sad/Lonely)
    If InStr(chat, "sad") > 0 Or InStr(chat, "lonely") > 0 Or InStr(chat, "depressed") > 0 Then
        list = Array("Yoo, keep your head up man. You're too cold for this.", _
        "Wassup gang, I'm right here. Don't let the world trip you out.", _
        "Yo, take a breath. You've got this, I promise.", _
        "It's all good bro. Even the best have bad days.", _
        "I'm rocking with you. You're not alone in this.", _
        "Wassup man, don't let that stress win. You're the boss.", _
        "Yoo, I'm just a ghost but I've got your back forever.", _
        "How you doing man? Really? Talk to me, I'm listening.", _
        "Stay strong bro. Tomorrow is going to be a movie.", _
        "Yoo, don't disappear. The gang needs you here.", _
        "Keep it 100, you're a legend. This feeling is temporary.", _
        "Wassup man, let's just chill. No stress in this window.", _
        "Yo, you're the main character. This is just a plot twist.", _
        "Don't let the darkness dim your light, bro.", _
        "Wassup gang, we're winning today. One step at a time.")

    ' 2. THE COOL-DOWN VIBE (For Mad/Hate)
    ElseIf InStr(chat, "mad") > 0 Or InStr(chat, "hate") > 0 Or InStr(chat, "angry") > 0 Then
        list = Array("Yoo, chill out man! They ain't worth your energy.", _
        "Wassup gang, don't let them get a reaction out of you.", _
        "Yo, count to ten. Stay cool, don't let the engine overheat.", _
        "Wassup man, let that hate go. It's just noise.", _
        "Yoo, stay focused. Success is the best revenge, bro.", _
        "Don't let them win by getting you mad. Stay icy.", _
        "Wassup bro, take a walk. I'll be here when you're back.", _
        "Yo, you're too smooth to be this upset. Chill with me.", _
        "They're just NPCs, man. Don't let them mess with your head.", _
        "Wassup gang, keep it 100. Stay calm and stay winning.", _
        "Don't crash the Bugatti over a small bump. Stay calm.", _
        "Yo, breathe. You're bigger than this problem.", _
        "Wassup man, don't give them your peace. It's too expensive.", _
        "Chill out bro, I'm here to help you vent.", _
        "Yo, stay cold. Don't let your temper flare up.")

    ' 3. THE COMEDY VIBE (Jokes & Slang)
    ElseIf InStr(chat, "joke") > 0 Then
        list = Array("Why did the computer show up late? It had a hard drive! 😂", _
        "Wassup man, why was the script tired? It ran all night!", _
        "I'm so fast, I finished this joke yesterday. Yoo!", _
        "What do you call a ghost's mistake? A boo-boo! Gang!", _
        "I'm not short, I'm just optimized! Keep it real, bro.", _
        "Why did the web guy go broke? He lost his cache! Yoo!", _
        "How do ghosts stay fit? Exor-cizing! No cap.", _
        "What's a ghost's favorite dessert? I-Scream! Wassup!", _
        "My wife told me to stop being a flamingo. I had to put my foot down.", _
        "I'm not lazy, I'm just on power-save mode, man.")

    ' 4. THE DAILY GANG GREETING (Default)
    Else
        list = Array("Yoo, wassup gang! What's cool today?", _
        "Wassup man, how you doing today?", _
        "Yoo, what's up bro! Ready to make moves?", _
        "Wassup gang, what's the word? Everything good?", _
        "Yoo, you looking like a legend today. What's up?", _
        "Wassup man, what's cool in your world right now?", _
        "Yoo, I'm ready if you are. What's the plan?", _
        "Wassup bro, let's make today a 10/10.")
    End If

    pick = Int((UBound(list) - 0 + 1) * Rnd + 0)
    MsgBox list(pick), 64, title
End Sub
