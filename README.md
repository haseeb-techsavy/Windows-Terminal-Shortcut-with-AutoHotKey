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
- 🔗 **[Blog Post on My Website](YourWebsiteLinkHere)**   

🎥 **Watch the Tutorial on YouTube:**  
- ▶️ **[YouTube Video](https://youtu.be/wd-ThKOChdk))**  

## **Contribute**  
Feel free to **fork** and improve the script! PRs are welcome. 😊  
