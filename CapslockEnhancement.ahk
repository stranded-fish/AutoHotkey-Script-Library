/*
    CapsLock（大写锁定）增强

    快捷键：
        CaspLock + `       | CapsLock 切换
        CaspLock + j/k/l/i | 方向键
        CaspLock + p/;     | Home/End
        CaspLock + u/o     | PageUp/PageDown
*/

; CapsLock 初始化
SetCapsLockState, AlwaysOff

; CapsLock 切换
CapsLock & `::
    GetKeyState, CapsLockState, CapsLock, T
    if CapsLockState = D                              
        SetCapsLockState, AlwaysOff
    else
        SetCapsLockState, AlwaysOn
    KeyWait, ``
return

; 方向键（Ctrl、Shift、alt 兼容）
CapsLock & j::
    if GetKeyState("control") = 0 {
        if GetKeyState("shift") = 0 {
            if GetKeyState("alt") = 0
                Send, {Left}
            else
                Send, !{Left}
            return
        } else {
            if GetKeyState("alt") = 0
                Send, +{Left}
            else
                Send, +!{Left}
            return
        }
        return
    } else {
        if GetKeyState("shift") = 0 {
            if GetKeyState("alt") = 0
                Send, ^{Left}
            else
                Send, ^!{Left}
            return
        } else {
            if GetKeyState("alt") = 0
                Send, +^{Left}
            else
                Send, +^!{Left}
            return
        }
        return
    }
return

CapsLock & k::
    if GetKeyState("control") = 0 {
        if GetKeyState("shift") = 0 {
            if GetKeyState("alt") = 0
                Send, {Down}
            else
                Send, !{Down}
            return
        } else {
            if GetKeyState("alt") = 0
                Send, +{Down}
            else
                Send, +!{Down}
            return
        }
        return
    } else {
        if GetKeyState("shift") = 0 {
            if GetKeyState("alt") = 0
                Send, ^{Down}
            else
                Send, ^!{Down}
            return
        } else {
            if GetKeyState("alt") = 0
                Send, +^{Down}
            else
                Send, +^!{Down}
            return
        }
        return
    }
return

CapsLock & i::
    if GetKeyState("control") = 0 {
        if GetKeyState("shift") = 0 {
            if GetKeyState("alt") = 0
                Send, {Up}
            else
                Send, !{Up}
            return
        } else {
            if GetKeyState("alt") = 0
                Send, +{Up}
            else
                Send, +!{Up}
            return
        }
        return
    } else {
        if GetKeyState("shift") = 0 {
            if GetKeyState("alt") = 0
                Send, ^{Up}
            else
                Send, ^!{Up}
            return
        } else {
            if GetKeyState("alt") = 0
                Send, +^{Up}
            else
                Send, +^!{Up}
            return
        }
        return
    }
return

CapsLock & l::
    if GetKeyState("control") = 0 {
        if GetKeyState("shift") = 0 {
            if GetKeyState("alt") = 0
                Send, {Right}
            else
                Send, !{Right}
            return
        } else {
            if GetKeyState("alt") = 0
                Send, +{Right}
            else
                Send, +!{Right}
            return
        }
        return
    } else {
        if GetKeyState("shift") = 0 {
            if GetKeyState("alt") = 0
                Send, ^{Right}
            else
                Send, ^!{Right}
            return
        } else {
            if GetKeyState("alt") = 0
                Send, +^{Right}
            else
                Send, +^!{Right}
            return
        }
        return
    }
return


; Home/End（Ctrl、Shift 兼容）
CapsLock & p::
    if GetKeyState("control") = 0 {
        if GetKeyState("shift") = 0
            Send, {Home}
        else
            Send, +{Home}
        return
    } else {
        if GetKeyState("shift") = 0
            Send, ^{Home}
        else
            Send, +^{Home}
        return
    }
return

CapsLock & `;::
    if GetKeyState("control") = 0 {
        if GetKeyState("shift") = 0
            Send, {End} 
        else
            Send, +{End}
        return
    } else {
        if GetKeyState("shift") = 0
            Send, ^{End}
        else
            Send, +^{End}
        return
    }
return


; PageUp/PageDown（Shift 兼容）
CapsLock & u::
    if GetKeyState("shift") = 0
        Send, {PgUp}
    else
        Send, +{PgUp}
return

CapsLock & o::
    if GetKeyState("shift") = 0
        Send, {PgDn}
    else
        Send, +{PgDn}
return