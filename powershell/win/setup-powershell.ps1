# プロファイルが存在するか確認し、なければ作成する
if (-not (Test-Path -Path $PROFILE)) {
  New-Item -ItemType File -Path $PROFILE -Force | Out-Null
} else {
  Move-Item -Path $PROFILE -Destination $PROFILE.bak -Force
}

Move-Item -Path Microsoft.PowerShell_profile.ps1 -Destination $PROFILE -Force
