# MacOs Manual settings

Here you can find the manual steps needed to complete the mac configuration:

## System Preferences

### Notifications

Adjust notifications for each app.

### Focus

Disable "Share across devices", as I want to configure it manually for each one.

### General

1. Select "Login Items"
2. Make sure these apps are added to "Open at Login"
   - Bitwarden / 1Password
   - Notion Calendar
   - Notion (Personal Only)
   - Raycast
   - Slack (Work Only)
   - Spark (Work Only)

### Appearance

1. Select "Dark" for light/dark mode
2. Select "Always" for "Show scroll bars"

### Control Centre

1. Set the following as "Show in Menu Bar":

   - Wifi
   - Bluetooth
   - Display
   - Sound

   - Battery

   - Spotlight

2. Set "Automatically hide and show the menu bar" to "Never".

### Siri & Spotlight

1. Disable Siri

### Desktop & Dock

1. Disable dock magnification
2. Enable "Automatically hide and show the dock"
3. Disable "Animate opening applications"
4. Disable "Show suggested and recent apps in Dock"
5. In "Deskop & Stage Manager" set "Show Items" to "On Desktop" and "Click wallpaper to reveal desktop" to "Only Stage Manager".
6. Disable Stage Manager
7. Disable Widgets
8. On "Mission Control" disable "Automatically rearrange Spaces based on most recent use" and enable "Displays have separate Spaces" and "Group windows by application".
9. Disable "Hot Corners"

### Lock Screen

1. Set "Start screen saver" to "Never"
2. Set "Login window shows" to "Name and password"

### Touch ID & Password

1. Enable "Apple Watch" unlock

### Keyboard

1. Select Edit in "Text Input" -> "Input Sources"
2. Add "U.S. International - PC"
3. Enable "Show input menu in menu bar"

### Mouse

1. Disable "Natural Scrolling"

### Trackpad

1. Enable "Tap to click"

## Finder

### Sidebar Folders

- Airdrop
- Recents
- Home
- Desktop
- Documents
- Development
- Applications
- Movies (Personal only)
- Pictures (Personal only)
- Download

### Settings

#### Generals

1. Only show "Hard disks" on desktop
2. Set new windows to open with "Home folder"
3. Deselect "Open folders in tabs instead of new windows"

#### Advanced

1. Enable "Show all filename extensions"
2. Set "Search the current folder" when performing a search

## Dock Apps

- Finder
- Apps
- Spark
- Notion Calendar
- Arc
- 1Password/Bitwardem
- Spotify
- Slack/Whatsapp
- Sublime
- Cursor
- Warp Terminal
- SourceTree
- Figma
- Settings
- Download folder

## Launchpad Apps

- Browsers (Arc, Safari, Chrome, Firefox, etc.)
- Apple
- Productivity (Notion Calendar, Notion, Bitwarden, iWork, etc.)
- Messages (Spark, Slack, Whatsapp, etc.)
- Utility (Raycast, Logi Options, Calibre, Transimission etc.)
- Development Tools (VsCode, Warp, Sourcetree, etc.)
- Media (Spotify, etc.)
- Graphics tools (Figma, Blender, Rive, etc.)
- Games (Nvidia geForce Now, PS Remote Play, etc.)
- Other
- Settings

## Additional scripts

- **Reduce dock hover delay**

  ```bash
  defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
  ```
