/* 
    浏览器白板编程增强
    
    快捷键：
        Ctrl + d             | 删除当前行
        Ctrl + Enter         | 在当前行下方插入空行，并移动光标
        Ctrl + Shift + Enter | 在当前行上方插入空行，并移动光标
*/

; 定义浏览器组
GroupAdd, Browsers, ahk_exe vivaldi.exe
GroupAdd, Browsers, ahk_exe chrome.exe
GroupAdd, Browsers, ahk_exe firefox.exe
GroupAdd, Browsers, ahk_exe msedge.exe
return

#IfWinActive ahk_group Browsers

; 删除当前行
^d::
    SendInput,{Home}{Home}{ShiftDown}{Down}{ShiftUp}{Del}
return

; 在当前行下方插入空行，并移动光标
^Enter::
    SendInput,{End}{Enter}
Return

; 在当前行上方插入空行，并移动光标
^+Enter::
    SendInput,{Home}{Enter}{Up}
Return