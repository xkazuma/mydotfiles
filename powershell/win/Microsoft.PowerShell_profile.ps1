# Encoding
$PSDefaultParameterValues['*:Encoding'] = 'utf8'
# PATH
$folderPath = "C:\msys64"
if (Test-Path $folderPath) {
    $env:path = "$env:path;C:\msys64;C:\msys64\usr\bin;C:\msys64\mingw64\bin"
}

# for StarShip
if (gcm starship -ea SilentlyContinue) {
    Invoke-Expression (&starship init powershell)
}

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
