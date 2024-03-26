# プロファイルが存在するか確認し、なければ作成する
if (-not (Test-Path -Path $PROFILE)) {
  Move-Item -Path Microsoft.PowerShell_profile.ps1 -Destination $PROFILE -Force
}
