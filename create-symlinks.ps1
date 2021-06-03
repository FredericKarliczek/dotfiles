# Creates Symlinks for dotfiles in Windows

$loggedinUser = Get-WMIObject -class Win32_ComputerSystem | select -ExpandProperty username
$loggedinUser = $loggedinUser.Split('\')
$loggedinUser = $loggedinUser[1]

## Nvim
$nvimLuaDotfile = "C:\Users\$loggedinUser\AppData\local\nvim\init.lua"
if (Test-Path $nvimLuaDotfile) { Remove-Item $nvimLuaDotfile }
New-Item -Path $nvimLuaDotfile -ItemType SymbolicLink -Value "$PSScriptRoot\NeoVim\init.lua"

$nvimLuaPath = "C:\Users\$loggedinUser\AppData\local\nvim\lua\"
if (Test-Path $nvimLuaPath -ErrorAction SilentlyContinue) { Remove-Item $nvimLuaPath -Recurse }

New-Item -Path "$nvimLuaPath" -ItemType SymbolicLink -Value "$PSScriptRoot\NeoVim\lua\" -Force
