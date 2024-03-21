$home_dir = $env:USERPROFILE
$PSDefaultParameterValues['*:Encoding'] = 'utf8'

# PATH
$env:path = "$env:path;C:\msys64;C:\msys64\mingw64\bin;C:\msys64\usr\bin" # msys2

# for Neovim
$env:VIRTUAL_ENV = "$home_dir\AppData\Local\nvim\neovim"

# for StarShip
Invoke-Expression (&starship init powershell)

Write-Host "Must restart PowerShell."
