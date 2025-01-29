#Requires AutoHotkey v2.0
#SingleInstance Force

!x::  ; Alt+X for regular terminal
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

^!x::  ; Ctrl+Alt+X for admin PowerShell
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