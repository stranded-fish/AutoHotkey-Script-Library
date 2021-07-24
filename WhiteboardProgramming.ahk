/* 
    浏览器（谷歌）白板编程增强
    
    快捷键：
        Ctrl + d             | 删除当前行
        Ctrl + Enter         | 在当前行下方插入空行，并移动光标
        Ctrl + Shift + Enter | 在当前行上方插入空行，并移动光标
*/

; 限定以下脚本只在 chrome 窗口运行
#IfWinActive, ahk_exe chrome.exe

; 删除当前行
^d::
    SendInput,{End}+{home}+{home}{Delete}{Delete}
return

; 在当前行下方插入空行，并移动光标
^Enter::
    SendInput,{End}{Enter}
Return

; 在当前行上方插入空行，并移动光标
^+Enter::
    SendInput,{Home}{Enter}{Up}
Return