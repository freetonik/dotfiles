# Computer setup

## 1. macOS core

- Disable iCloud
- Connect to NAS
- Finder sidebar
  - Desktop
  - gdrive
  - Downloads
  - Screenshots
  - Applications
  - home
  - Media
  - Entertainment

### System preferences

- Language and region
  - English US
    - Region: Finland
    - Day: Monday
    - Calendar: Gregorian
    - [x] 24-hour
    - Celsius
    - List order: Universal
  - Русский

- Sharing
  - Disable all sharing

- Keyboard
  - Key repeat: fast
  - Until: short
  - [ ] Show kb and emoji viewers:
  - [ ] Use F1,...
  - Modifier keys...
    - Caps Lock → Control
  - Text
    - [ ] Correct spelling
    - [ ] Capitalize
    - [ ] Add period
    - [ ] Use smart quotes
  - Input sources
    - ABC
    - Russian PC
    - [ ] Show input menu


### Core apps

- Screenshot app
  - Change location to `gdrive/4 Etc/screenshots`

## 2. System

- [Homebrew](https://brew.sh/)
- `brew install git`
- Clone dotfiles
- run `generate_symlinks.sh`

```bash
git config --global user.name "Rakhim Davletkaliyev"
git config --global user.email "rakhim@rakhim.org"
```

- [Karabiner Elements](https://pqrs.org/osx/karabiner/)
  - It syncs automatically via `~/.config` → (symlink) `~/gdrive/4 Etc/configs/.config`
  - For new PC-keyboard:
    - left command (left gui) → left option
    - left option → left command
    - right option → right command
    - Function keys
      - f1..f4
      - f5 → rewind
      - f5 → play
      - f7 → fastforward
      - f8..f10
      - f11 → vol_dec
      - f12 → vol_inc
    - Complex modifications: none

## 3. Apps

### Core

- [1Password](https://1password.com/downloads/)
- [Google Drive client](https://www.google.com/drive/download/backup-and-sync/)

- [Typinator 8](https://www.ergonis.com/downloads/dnld_typinator.html)
  - Sync via gdrive `4 Etc/configs/...`
  - Activation settings:
    - [ ] Open window...
    - [x] Automatically start...
    - [ ] Show in menu...
    - Quick search: `Alt+Cmd+Enter`
    - Create new item from selection: `Control+Alt+Cmd+Enter`
- [Keyboard Maestro](https://www.keyboardmaestro.com/main/)
  - Sync via gdrive `4 Etc/configs/...`
- [Alfred 3](https://www.alfredapp.com/help/v3/)
  - Sync via gdrive `4 Etc/configs/...`

- [App Cleaner](https://freemacsoft.net/appcleaner/)

- [Google Chrome](https://www.google.com/chrome/)
- [Firefox](https://www.mozilla.org/en-US/firefox/new/?redirect_source=firefox-com)

### Development

- [Emacs](https://github.com/freetonik/emacs-dotfiles)
- [iTerm2](https://iterm2.com/downloads.html)
  - General
    - Magic
      - [ ] GPU rendering
  - Appearance
    - Theme: minimal
  - Profile: Default
    — Reuse previous session's directory
    - Colors: light background
    - Font: Monaco Regular 14
- Postgres
- Postico
- DB Browser for SQLite
- CocoaRestClient
- PIA

### Other

- [Skype](https://www.skype.com/en/get-skype/)
- [Crisp](https://crisp.chat/en/apps/)
- [WhatsApp](https://www.whatsapp.com/download)
- Acorn
- Keynote, Numbers, Pages
- Audacity

### Small nice things

- [Moom](https://manytricks.com/moom/)
  - `Alt-Cmd-Arrows`
- [Day-O](https://shauninman.com/archive/2016/10/20/day_o_2_mac_menu_bar_clock)
- [Spotify](https://www.spotify.com/us/download/other/)
- [ImageOptim](https://imageoptim.com/mac)
- [Self Control](https://selfcontrolapp.com/)
- [VLC](https://www.videolan.org/vlc/download-macosx.html)
- [Mac Media Key Forwarder](http://milgra.com/mac-media-key-forwarder.html)
  - Open at login, Prioritize Spotify

### From App store

- MindNode 6
- Patina
- Todoist
- Telegram
- Telegram Desktop
- Emcee for Music
