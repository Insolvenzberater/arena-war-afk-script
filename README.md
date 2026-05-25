# Arena War AFK Script
https://www.youtube.com/watch?v=es0MtzoEYOA
AutoHotkey script for automating Arena War AFK grinding in GTA V Enhanced.

## Features
- Support for 2 Player(1 Winner, 1 Loser) and 3 Player(2 Winner 1 Loser)
- Restart logic with auto-resume (to fix GTAOnline kicks)
- Script automatically restarts GTA and initializing a new Arena War Lobby without User Input
- FindText-based detection
- Steam and Epic launcher support (could also do Rockstar Launcher Support, but am too lazy. Request it or write an issue if i should do it xD) (or do it yourself with chatgpt)

## Requirements
- AutoHotkey v1
- GTA V Enhanced
- English or german game language
- FindText included in `Lib/`
- Spawn Point set to mansion or any other house that has the bed to the right if waking up when logging into GTA Online!!!
- Turn off Cloud saves in Rockstar Launcher, to fix login issues

## Setup
1. Start the script
(will auto start as admin. because of blockinput.) (you can delete the admin thing on top of the ahk to disable that. but it will bug your script out if u move mouse or keyboard. so admin is preferable)
2. Select launcher, role and player count on every pc. 2 Players are required. minimum 1 winner and 1 helper. a third winner2 is possible but not needed. so 2 pcs are mandatory
3. Enter Rockstar names and FindText strings (FindText Tutorial: https://www.youtube.com/watch?v=OZOwasW00fo)
4. Save settings
5. Start the script

## Notes
This project includes FindText. Please see the LICENSE file for licensing details.
