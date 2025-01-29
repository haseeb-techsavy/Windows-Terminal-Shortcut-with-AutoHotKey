# Windows Terminal Shortcut with AutoHotkey

This repository contains an AutoHotkey (AHK) script that allows you to open the **Windows Terminal** with custom keyboard shortcuts. The script provides two shortcuts:

1. **Alt+X**: Opens the Windows Terminal in the current directory (if you're in File Explorer) or just opens the terminal.
2. **Ctrl+Alt+X**: Opens the Windows Terminal with **PowerShell as an administrator** in the current directory (if you're in File Explorer) or just opens the terminal with PowerShell.

This script is designed to save time and make it easier to access the terminal directly from your current working directory.

---

## How to Use

### Prerequisites

- **AutoHotkey**: You need to have AutoHotkey installed on your system. You can download it from the [official website](https://www.autohotkey.com/).

### Steps

1. **Download the Script**:
   - Clone this repository or download the `Terminal-shortcut.ahk` file.

2. **Run the Script**:
   - Double-click the `Terminal-shortcut.ahk` file to run the script. The shortcuts will now be active.

3. **Add to Startup** (Optional):
   - If you want the script to run automatically when you start your computer, place the `.ahk` file in your Windows Startup folder. You can find the Startup folder by pressing `Win + R`, typing `shell:startup`, and pressing Enter.

---

## Customizing the Shortcut Keys

You can easily change the shortcut keys to whatever you prefer. Here's how:

1. **Open the Script**:
   - Right-click the `Terminal-shortcut.ahk` file and select "Edit" to open it in a text editor.

2. **Change the Shortcut Keys**:
   - The script uses the following syntax for shortcut keys:
     - `!` represents the **Alt** key.
     - `^` represents the **Ctrl** key.
     - `+` represents the **Shift** key.
     - `x` or any other letter/number represents the key to be pressed.
   - For example:
     - `!x` means **Alt+X**.
     - `^!x` means **Ctrl+Alt+X**.
     - If you want to use **Ctrl+Shift+T**, you would change `!x` to `^+t`.

3. **Save and Reload**:
   - After making changes, save the file and reload the script by right-clicking the script icon in the system tray and selecting "Reload This Script."

---

## License

This project is licensed under the **MIT License**. This is a permissive license that allows others to freely use, modify, and distribute your work, even for commercial purposes, as long as they give you credit. It’s a great choice if you want to share your script with others and allow them to use it freely.

### Why MIT License?
- **Freedom to Use**: Anyone can use, modify, and distribute the script.
- **Attribution**: Users must give you credit if they use or modify your work.
- **No Restrictions**: There are no restrictions on how others can use the script.

You can find the full text of the MIT License in the [LICENSE](LICENSE) file.

---

## Contributing

If you have any suggestions, improvements, or issues, feel free to open an issue or submit a pull request. Your contributions are welcome!

---

## Support

If you find this script useful, consider giving it a ⭐️ on GitHub! If you have any questions or need help, feel free to open an issue.
