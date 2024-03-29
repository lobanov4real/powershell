[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![OS](https://img.shields.io/badge/OS-Windows-yellow.svg)](https://www.microsoft.com/en-us/windows?r=1)
[![Nerd font](https://img.shields.io/badge/Nerd_font-JetBrainsMono-purple.svg)](https://www.jetbrains.com/lp/mono/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/license/mit/)

# Setup and customize PowerShell on Windows

## Description

It's my personal powershell setup and deployment some software suitable after install new Windows OS (tested on Windows 11, 10).  
I use Oh My Posh to change standard look of powershell with own theme **ivan**, you can choose different themes [here](https://ohmyposh.dev/docs/themes).  
I add some settings for promptline and useful alias for me.  
Inspired by [@Takuya Matsuyama](https://github.com/craftzdog) from youtube video [How to set up PowerShell prompt with Oh My Posh on Windows 11](https://www.youtube.com/watch?v=5-aK2_WwrmM).  

## Screenshot

![image](https://github.com/lobanov4real/powershell/assets/110660329/44d0334c-d9d1-4006-b397-6cee9bcf030c)

## Prerequisites

- [Windows Terminal](https://github.com/microsoft/terminal)  
- [PowerShell](https://github.com/PowerShell/PowerShell)  
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts)  

## Installation

Install windows package manager Scoop:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

```powershell
irm get.scoop.sh | iex
```

Install Git:

```powershell
winget install --accept-package-agreements --accept-source-agreements -h --id Git.Git --Force --source winget
```

Install Oh My Posh:

```powershell
winget install --accept-package-agreements --accept-source-agreements -h --id JanDeDobbeleer.OhMyPosh --Force --source winget
```

> [!IMPORTANT]
> Reload PowerShell

Set path to user profile of PowerShell:

```powershell
Add-Content $PROFILE.CurrentUserCurrentHost '.$env:USERPROFILE\.config\powershell\user_profile.ps1'
```

Go to dotenv:

```powershell
cd ~/.config
```

Clone GitHub repo:

```powershell
git clone https://github.com/lobanov4real/powershell.git
```

Go to PowerShell directory:

```powershell
cd ./powershell
```

Start installation:

```powershell
run-install.ps1
```

> [!IMPORTANT]
> Reload PowerShell

## List of powershell modules

- Terminal-Icons
- 7Zip4Powershell
- PSWindowsUpdate
- VPNCredentialsHelper

## List of scoop software

- neovim
- vcredist2022
- curl
- sudo
- git
- webtorrent
- ripgrep
- wget
- fzf
- gcc
- innounp
- tree-sitter
- gzip

## list of winget software  

- OhMyPosh
- Google Chrome
- Telegram Desktop
- Bitwarden
- Obsidian
- Slack
- Zoom
- Lightshot
- 7zip  
- Core Temp
- Microsoft Visual Studio Code
  
> [!WARNING]
> Some software: ***Google Chrome***, ***Zoom***, ***Lightshot***, ***7zip*** require and ***Core Temp*** a privileged right to install. You can run powershell as Administrator or just confirm operation during installation.

## License

MIT
