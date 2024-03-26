#Requires -RunAsAdministrator

# Git
winget install Git.Git
winget install GnuPG.GnuPG --source winget --accept-package-agreements --accept-source-agreements

# tools for Windows
winget install chocolatey
winget install --id Microsoft.Powershell --source winget
winget install --accept-package-agreements 7z
winget install --id Starship.Starship

# for development tools
winget install Microsoft.DevHome
winget install vscode
winget install wez.wezterm
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
winget install Docker.DockerDesktop
winget install RedHat.Podman
winget install lazydocker --id JesseDuffield.Lazydocker

# for Rust tools
winget install rust --id Rustlang.Rust.MSVC

# for Documentation
winget install Notion.Notion

# for Communication tools
winget install Discord.Discord
winget install SlackTechnologies.Slack

# for Windows health
winget install CrystalDewWorld.CrystalDiskInfo
winget install ALCPU.CoreTemp
