# Arena War AFK Script

[![Watch the video](https://img.youtube.com/vi/es0MtzoEYOA/maxresdefault.jpg)](https://youtu.be/es0MtzoEYOA)

AutoHotkey script for automating Arena War AFK grinding in GTA V Enhanced.

---

## ❤️ Special Thanks

This project would not exist without these people.

- **ReiDaTecnologia**  
  The original creator who introduced the Arena War automation idea and inspired the entire concept.  
  https://www.youtube.com/@ReiDaTecnologia

- **Graycier**  
  Created an alternative script version that later evolved into the continuation and foundation of this project.

---

## Features

- Support for:
  - 2 Players (1 Winner, 1 Helper)
  - 3 Players (2 Winners, 1 Helper)

- Restart logic with auto-resume to recover from GTA Online kicks

- Fully automatic GTA restart and Arena War lobby setup

- Automatically applies optimized GTA settings for AFK grinding and reduced overnight power usage

- Optional integration with FanControl and SignalRGB:
  - Automatically adjusts fan profiles while the script is running
  - Turns off RGB lighting during AFK sessions
  - Restores all previous settings when stopping the script with `F2`
  - Optional extended AHK version with FanControl and SignalRGB integration included in the repository

- FindText-based detection

- Steam and Epic Games launcher support  
  (Rockstar Launcher support could be added later if requested)

---

## Requirements

- AutoHotkey v1.1
- GTA V Enhanced
- English or German game language
- FindText included inside `Lib/`
- Rockstar Cloud Saves disabled  
  (helps prevent login issues)
- GTA Online spawn location set to:
  - Mansion
  - or another property where the bed is on the right side after spawning

The restart routine depends on the bed interaction after loading into GTA Online.

---

## Setup

### 1. Install AutoHotkey v1.1

Download:  
https://www.autohotkey.com/download/ahk-install.exe

---

### 2. Download the Script

Download the ZIP from the Releases page and extract it anywhere.

---

### 3. Prepare GTA Settings (IMPORTANT)

Before generating FindText strings in Step 6, GTA must use:

- Resolution: `1920x1080`
- Display Mode: `Windowed Fullscreen`

Permanent required setting:

- Online Spawn Location: `Mansion`  
  (only tested with the Vinewood Mansion)

The bed must appear on the right side after waking up, otherwise the restart routine may fail.

> The 1920x1080 setup is only needed for FindText generation.
> After setup, the script automatically applies optimized AFK settings and restores your original settings when stopping the script with `F2`.

---

### 4. Start the Script

The script automatically requests administrator rights because `BlockInput` is used.

You can remove the admin section at the top of the AHK file, but this is not recommended because mouse or keyboard movement can break automation timing.

Running as administrator is strongly recommended.

---

### 5. Configure Each PC

On every PC:
- Select launcher
- Select role
- Select player count

Minimum setup:
- 2 PCs
- 1 Winner
- 1 Helper

Optional setup:
- 3 PCs
- 1 Winner
- 1 Second Winner
- 1 Helper

A Helper is always required.

---

### 6. Enter Rockstar Names and Generate FindText Strings

Follow this tutorial for FindText generation:  
https://www.youtube.com/watch?v=OZOwasW00fo

Make sure GTA is still running in:
- `1920x1080`
- `Windowed Fullscreen`

during this step.

---

### 7. Save Settings

Save all settings after configuration is complete.

⚠️ Do not forget to save after generating your FindText strings.  
Otherwise you will need to generate all strings again next time.

The `.ini` configuration file is only written when:
- pressing the Save button in the GUI
- or when starting the script

Additional notes:
- An `.ini` file will automatically be created inside the script folder using your PC name
- This allows multiple PCs to safely use the same synchronized folder setup
- Google Drive synchronization is supported
- Each PC keeps its own separate configuration automatically

---

### 8. Start Automation

For proper synchronization, always start the scripts in this order:

1. Start the `Winner2` script first  
   (only required in 3-player mode)

2. Start the `Helper` script

3. Start the main `Winner` script last

`Winner2` must be started first because it is the first player invited during the lobby setup process.

If the scripts are started in the wrong order, the automation will still recover automatically, but it may waste time inside synchronization and restart loops.

---

### 9. Stop the Script Properly

To stop the script, always press `F2`.

Pressing `F2` will:
- stop the automation
- close GTA and Rockstar-related processes
- restore your personal GTA settings
- restore optional FanControl and SignalRGB settings, if you use the extended version

Do not kill the script manually through Task Manager or by closing AutoHotkey directly.

If you do, your GTA settings may not be restored correctly.

---

## Notes

This project includes FindText.  
Please check the LICENSE file for licensing details.
