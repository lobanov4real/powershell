# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

oh-my-posh init pwsh --config "~/.config/powershell/ivan.omp.json" | Invoke-Expression

# Import-Module
Import-Module -SkipEditionCheck -Force -Name Terminal-Icons
Import-Module -SkipEditionCheck -Force -Name PSReadLine
Import-Module -SkipEditionCheck -Force -Name PSFzf

# PSReadline options
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionSource History 
Set-PSReadLineOption -BellStyle None 
Set-PSReadLineOption -PredictionViewStyle ListView 
Set-PSReadLineOption -ShowToolTips:$True 
Set-PSReadLineOption -HistoryNoDuplicates:$True
Set-PSReadlineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
# PSFzf options
Set-PSFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Functions
Function CleanTemp {sudo Remove-Item -Path $env:TEMP\* -Recurse -Force -ErrorAction SilentlyContinue |
sudo Remove-Item -Path C:\Windows\Temp\* -Recurse -Force -ErrorAction  SilentlyContinue}
Function cleanrb {Clear-RecycleBin -force}
Function shutdownoff {shutdown /p}
Function shutdownreboot {shutdown /r /t 0}
Function reloadpowershell {Invoke-Command { & "pwsh.exe"       } -NoNewScope}
Function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
  Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue 
  }
Function updateall {winget upgrade --all && scoop update --all}
Function nvimclean {Remove-Item -r ~/AppData/Local/nvim-data/swap/* | Remove-Item -r ~/AppData/Local/nvim-data/shada/*}

# Alias
Set-Alias cle clear
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias wi winget
Set-Alias slack ~\AppData\Local\slack\slack.exe
Set-Alias indeed '~\OneDrive\Documents\Indeed Identity.rdp'
Set-Alias tlg '~\AppData\Roaming\Telegram Desktop\Telegram.exe'
Set-Alias chrome 'C:\Program Files\Google\Chrome\Application\chrome.exe'
Set-Alias zoom '~\AppData\Roaming\Zoom\bin\Zoom.exe'
Set-Alias reboot shutdownreboot
Set-Alias poweroff shutdownoff
Set-Alias cln CleanTemp
Set-Alias touch New-Item
Set-Alias reload reloadpowershell
Set-Alias upd updateall
Set-Alias proton 'C:\Program Files (x86)\Proton Technologies\ProtonVPN\ProtonVPN.exe'
Set-Alias vag vagrant
Set-Alias clnvim nvimclean
Set-Alias clnrb cleanrb
Set-Alias vbox 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Oracle VM VirtualBox\Oracle VM VirtualBox.lnk'
