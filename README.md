# **Windows Terminal Shortcut using AutoHotkey** 🚀  

This repository contains an **AutoHotkey (AHK) script** that creates custom **keyboard shortcuts** to quickly open Windows Terminal. No more searching through menus—just press a key combo and launch Terminal instantly!  

## **Features**  
✅ **Alt + X** → Open Windows Terminal  
✅ **Ctrl + Alt + X** → Open Windows Terminal as Administrator (PowerShell)  
✅ Opens Terminal in the current File Explorer directory  
✅ Lightweight and runs in the background  

## **Installation**  
1. Install **[AutoHotkey v2.0](https://www.autohotkey.com/)**.  
2. Download and run `Terminal-Shortcut.ahk`.  
3. (Optional) Add it to `shell:startup` for auto-launch on boot.

## **How to Change the Shortcut Keys**  
You can **customize the shortcut keys** by editing the `Terminal-Shortcut.ahk` script.  

### **Steps to Modify Shortcuts:**  
1. **Right-click** on `Terminal-Shortcut.ahk` and select **Edit Script**.  
2. Look for these lines in the script:
   ```ahk
   !x::Run, wt  ; Alt + X opens Windows Terminal
   ^!x::Run, *RunAs wt  ; Ctrl + Alt + X opens Windows Terminal as Administrator
   ```
3. Change `!x` (Alt + X) or `^!x` (Ctrl + Alt + X) to your preferred key combination.  
   - `!` = **Alt**  
   - `^` = **Ctrl**  
   - `+` = **Shift**  
   - `#` = **Windows Key**  
4. Save the file and **double-click** to reload the script.

## **Learn More**  
📖 **Read the Full Guide:**  
- 🔗 **[Blog Post on My Website](https://www.haseebthetechguru.com/open-windows-terminal-with-shortcut-key)**   

🎥 **Watch the Tutorial on YouTube:**  
- ▶️ **[YouTube Video](https://youtu.be/wd-ThKOChdk))**  

### **Example of Modified Code:**
```^+t::  ; Ctrl+Shift+T for regular terminal
{
    try {
        hwnd := WinExist("A")
        if (!hwnd) {
            Run "wt.exe"
            return
        }

        class := WinGetClass("ahk_id " hwnd)
        
        if (class = "CabinetWClass") {
            shell := ComObject("Shell.Application")
            
            for window in shell.Windows {
                try {
                    if (window.HWND = hwnd) {
                        cwd := window.Document.Folder.Self.Path
                        if DirExist(cwd) {
                            Run 'wt.exe -d "' cwd '"'
                            return
                        }
                    }
                }
            }
        }
        
        Run "wt.exe"
    } catch Error as e {
        Run "wt.exe"
    }
}

^!t::  ; Ctrl+Alt+T for admin PowerShell
{
    try {
        hwnd := WinExist("A")
        if (!hwnd) {
            Run '*RunAs wt.exe -p "PowerShell"', , 'UseErrorLevel'
            return
        }

        class := WinGetClass("ahk_id " hwnd)
        
        if (class = "CabinetWClass") {
            shell := ComObject("Shell.Application")
            
            for window in shell.Windows {
                try {
                    if (window.HWND = hwnd) {
                        cwd := window.Document.Folder.Self.Path
                        if DirExist(cwd) {
                            Run '*RunAs wt.exe -p "PowerShell" -d "' cwd '"', , 'UseErrorLevel'
                            return
                        }
                    }
                }
            }
        }
        
        Run '*RunAs wt.exe -p "PowerShell"', , 'UseErrorLevel'
    } catch Error as e {
        Run '*RunAs wt.exe -p "PowerShell"', , 'UseErrorLevel'
    }
}
