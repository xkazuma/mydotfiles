$home_dir    = $env:USERPROFILE
$nvim_config = "$home_dir\AppData\Local\nvim"
$nvim_share  = "$home_dir\.local\share\nvim"
$nvim_state  = "$home_dir\.local\state\nvim"
$nvim_cache  = "$home_dir\.cache\nvim"

# バックアップディレクトリ作成
$backup_dir = "$home_dir\.nvim_backup"
if (-not (Test-Path -Path $backup_dir)) {
  New-Item -ItemType Directory -Path $backup_dir | Out-Null
}

function Backup-And-Move-Directory {
  param(
      [string]$source,
      [string]$destination
      )
    if (Test-Path -Path $source) {
      Move-Item -Path $source -Destination $destination -Force
    }
}

Backup-And-Move-Directory -source $nvim_config -destination "$backup_dir\nvim_config.bak"
Backup-And-Move-Directory -source $nvim_share -destination "$backup_dir\nvim_share.bak"
Backup-And-Move-Directory -source $nvim_state -destination "$backup_dir\nvim_state.bak"
Backup-And-Move-Directory -source $nvim_cache -destination "$backup_dir\nvim_cache.bak"

# LazyVimのインストール
git clone https://github.com/LazyVim/starter $nvim_config
if ($LASTEXITCODE -eq 0) {
  Remove-Item -Path "$nvim_config\.git" -Recurse -Force
  Write-Host "LazyVim installed. Execute nvim."
} else {
  Write-Host "An error related to Git occurs."
}

# node.js のセットアップ
npm install -g neovim
if ($LASTEXITCODE -eq 0) {
  Write-Host "Neovim module for NodeJS installed successfully."
} else {
  Write-Host "Neovim module for NodeJS installation failed."
}

# python のセットアップ
Set-Location -Path $nvim_config
python -m venv neovim
if ($LASTEXITCODE -eq 0) {
  Write-Host "Created venv for Neovim."
  & "$nvim_config\neovim\Scripts\Activate.ps1"
  pip install neovim
  deactivate
} else {
  Write-Host "Python setup failed."
}

Set-Location -Path $env:USERPROFILE
