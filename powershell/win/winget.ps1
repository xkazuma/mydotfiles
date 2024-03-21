#Requires -RunAsAdministrator

# tools for Windows
winget install chocolatey
winget install 7zip
winget install --id Microsoft.Powershell --source winget
winget install --accept-package-agreements 7z
winget install --id Starship.Starship

# for development tools
winget install vscode
winget install --id Microsoft.VisualStudio.2022.Community
winget install --id Microsoft.VisualStudio.2022.BuildTools
winget install --id MSYS2.MSYS2

winget install --id ChilliBits.Spice

# for neovim
winget install --id JesseDuffield.lazygit
winget install powertoys --source winget
winget install deno --source winget
winget install node.js --source winget
winget install "Python 3.12" --source winget
winget install --id BurntSushi.ripgrep.MSVC
winget install --id sharkdp.fd
winget install neovim --source winget

# for LaTeX PDF viewer
winget install okular --source winget

# for Docker
winget install 'Docker Desktop'
winget install docker
winget install lazydocker --id JesseDuffield.Lazydocker

# for Rust tools
winget install rust --id Rustlang.Rust.MSVC

# for Communication tools
winget install discord
winget install slack

# for Windows health
winget install crystaldiskinfo
winget install coretemp
