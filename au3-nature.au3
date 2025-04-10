#include <GUIConstantsEx.au3>

$gui = GUICreate("Simple GUI", 300, 200) ; Create a GUI window (300x200 size)
$label = GUICtrlCreateLabel("Enter Nature Nature:", 10, 10)
$input = GUICtrlCreateInput("", 150, 10, 140)
$button = GUICtrlCreateButton("Submit", 100, 100, 80, 30)

GUISetState(@SW_SHOW) ; Show the window

While 1
    $msg = GUIGetMsg()
    If $msg = $button Then
        MsgBox(0, "Hello!", "Hi, " & GUICtrlRead($input) & "!")
    ElseIf $msg = $GUI_EVENT_CLOSE Then
        Exit
    EndIf
WEnd
