#Requires AutoHotkey v2.0

#HotIf !MouseIsOver("Code.exe")     ; Only activate if Code is not under the mouse
$!WheelUp::                         ; "$" for physical wheel event, not when sent as below
{
    Send "{Blind}{WheelUp 10}"
    return
}   

$!WheelDown:: 
{
    Send "{Blind}{WheelDown 10}"
    return
}

MouseIsOver(proc_name) {
    MouseGetPos , , &id_
    current_win_pname := WinGetProcessName(WinGetTitle(id_))
    return (proc_name == current_win_pname)
}
