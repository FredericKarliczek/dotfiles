# Creates Symlinks for dotfiles in Windows

$loggedinUser = Get-WMIObject -class Win32_ComputerSystem | select -ExpandProperty username
$loggedinUser = $loggedinUser.Split('\')
$loggedinUser = $loggedinUser[1]

## Nvim
$nvimDotfile = "C:\Users\$loggedinUser\AppData\local\nvim\init.vim"
if (Test-Path $nvimDotfile) { Remove-Item $nvimDotfile }
New-Item -Path $nvimDotfile -ItemType SymbolicLink -Value "$PSScriptRoot\NeoVim\init.vim"