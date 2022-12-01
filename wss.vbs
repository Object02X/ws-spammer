Contact = InputBox("Enter contact name" & vbNewLine & vbNewLine &  "Don't use an accent!", "WhatsApp DDos")
Message = InputBox("What message do you want to send?","WhatsApp DDos")
T = InputBox("How many times do you want to send the message?" & vbNewLine & vbNewLine & "Enter a number!","WhatsApp DDos")
If MsgBox("Do you want to continue ?" & vbNewLine & vbNewLine & "Click NO to cancel.", vbYesNo + vbQuestion + vbSystemModal, "WhatsApp DDos") = vbYes Then
 
	Set WshShell = WScript.CreateObject("WScript.Shell")
	Return = WshShell.Run("https://web.whatsapp.com/", 1)

 
	If MsgBox("Is WhatsApp Web open?" & vbNewLine & vbNewLine & "If not, wait for the page to load !" & vbNewLine & vbNewLine & "Click NO to cancel !", vbYesNo + vbQuestion + vbSystemModal, "WhatsApp DDos") = vbYes Then
 
	MsgBox "Don't touch your browser during spamming !" & vbNewLine & vbNewLine & "Starts in 4 seconds.", 1024 + vbSystemModal, "warning"
 
	WScript.Sleep 50
	WshShell.SendKeys "{TAB}"
 
	WScript.Sleep 50
	WshShell.SendKeys Contact
	WScript.Sleep 2000
	WshShell.SendKeys "{ENTER}"
	WScript.Sleep 2000
 
	For i = 0 to T
	WScript.Sleep 5
	WshShell.SendKeys Message
	WScript.Sleep 5
	WshShell.SendKeys "{ENTER}"
	Next
 
	WScript.Sleep 1000
	MsgBox "spammed " + Contact + ".", 1024 + vbSystemModal, "done"
 
	Else
	MsgBox "The process was successfully canceled.", vbSystemModal, "DDos Annulé"
	End If
Else
MsgBox "The process could not continue.", vbSystemModal, "Cancelled"
End If
Set WshShell = WScript.CreateObject("WScript.Shell")
Return = WshShell.Run("https://github.com/Object02X", 1)