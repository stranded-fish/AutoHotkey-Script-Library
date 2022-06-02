# AutoHotkey Script Library

AutoHotkey 是一种免费的、开源的 Windows 脚本语言，它允许用户轻松地为各种任务创建脚本或是自定义鼠标和键盘的快捷键。

本项目提供了针对键盘大写锁定键 <kbd>CapsLock</kbd> 的快捷键映射以及针对浏览器编辑操作的 AutoHotkey 强化脚本。

目录：

- [AutoHotkey Script Library](#autohotkey-script-library)
  - [快速开始](#快速开始)
  - [功能介绍](#功能介绍)
    - [CapslockEnhancement.ahk](#capslockenhancementahk)
    - [BrowserEditEnhancement.ahk](#browsereditenhancementahk)
  - [自定义操作](#自定义操作)

## 快速开始

**Step 1.** 安装 AutoHotkey

* 访问 [AutoHotkey 主页](https://autohotkey.com/);
* 点击 [下载](https://autohotkey.com/download/ahk-install.exe)。

> **注意：** 在安装 Autohotkey 过程中，需要选择安装 UNICODE 或者 ANSI 版本。如果需要它支持非英文字符和数字, 就选择安装 UNICODE 版。

安装完成后，可在其安装目录下找到帮助文件 `AutoHotkey.chm`。

**Step 2.** 下载脚本

通过 `git clone` 命令或是直接下载压缩包将项目脚本下载至本地。

**Step 3.** 运行脚本

双击 `CapslockEnhancement.ahk` 和 `WhiteboardProgramming.ahk` 即可启动脚本

脚本启动后会显示在系统托盘区，右击可对其进行暂停、重启、编辑等各种操作。

## 功能介绍

### CapslockEnhancement.ahk

在中文打字环境中，很少使用到大写锁定键，而在编程环境中，偶尔会用到的大写首字母等操作，又更加推荐按住 Shift 进行转换，故对于中文使用者而言 Capslock 键的整体使用频率偏低，但又非常容易误触 Capslock 键，最终影响工作效率。

为了避免误触，同时充分利用 Capslock 键优越的键盘位置，`CapslockEnhancement.ahk` 提供了以下功能：

|                                  按键                                         |                           功能                             |
|-------------------------------------------------------------------------------|-----------------------------------------------------------|
|<kbd>CaspLock</kbd> + <kbd>`</kbd>                                              | <kbd>CapsLock</kbd>                                      |
|<kbd>CaspLock</kbd> + <kbd>J</kbd> / <kbd>K</kbd> / <kbd>L</kbd> / <kbd>I</kbd> | <kbd>←</kbd> / <kbd>↓</kbd> / <kbd>→</kbd> / <kbd>↑</kbd>|
|<kbd>CaspLock</kbd> + <kbd>P</kbd> / <kbd>;</kbd>                               | <kbd>Home</kbd> / <kbd>End</kbd>                         |
|<kbd>CaspLock</kbd> + <kbd>U</kbd> / <kbd>O</kbd>                               | <kbd>PageUp</kbd> / <kbd>PageDown</kbd>                  |

与此同时，该脚本还保证了与其他按键组合的兼容性：

* 方向键兼容：<kbd>Ctrl</kbd>、<kbd>Shift</kbd>、<kbd>alt</kbd>
  * 示例：同时按下 <kbd>CaspLock</kbd> + <kbd>Shift</kbd> + <kbd>J</kbd> / <kbd>K</kbd> / <kbd>L</kbd> / <kbd>I</kbd> 可移动光标并选择，同原按下原方向键的语义。
* <kbd>Home</kbd> / <kbd>End</kbd> 兼容：<kbd>Ctrl</kbd>、<kbd>Shift</kbd>
  * 示例：同时按下：<kbd>CaspLock</kbd> + <kbd>Ctrl</kbd> + <kbd>;</kbd>，可移动光标到文件末尾，同原 <kbd>End</kbd> 语义。
* <kbd>PageUp</kbd> / <kbd>PageDown</kbd> 兼容：<kbd>Shift</kbd>

> **<kbd>CaspLock</kbd>：你被强化了，快上！**

### BrowserEditEnhancement.ahk

对于习惯了编辑器的各种快捷键操作的用户来说，浏览器网页上的富文本编辑功能，使用起来可能十分不便捷（即使其提供了一些快捷键操作，可能也与自身编程习惯不符合且无法自定义）。

为了将自身的编辑器快捷键使用习惯，便捷地运用到浏览器上， `BrowserEditEnhancement.ahk` 提供了以下功能：

| 按键                                                  | 功能                            |
|-------------------------------------------------------|-------------------------------|
| <kbd>Ctrl</kbd> + <kbd>D</kbd>                        | 删除当前行                      |
| <kbd>Ctrl</kbd> + <kbd>Enter</kbd>                    | 在当前行下方插入空行，并移动光标 |
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Enter</kbd> | 在当前行上方插入空行，并移动光标 |

以上功能为 VS Code 编辑器常用快捷键，如果需要更多功能或自定义操作，可参考脚本代码实现以及 [自定义操作](#自定义操作)。

## 自定义操作

如果需要自定义更多操作，可参考：[AutoHotkey 快速入门](https://yulan.work/posts/autohotkey-quick-start/)。
