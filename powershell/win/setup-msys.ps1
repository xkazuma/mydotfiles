Start-Process -FilePath "mingw64.exe" -ArgumentList "pacman -Sy msys2-keyring" -Wait
Start-Process -FilePath "mingw64.exe" -ArgumentList "pacman -Su" -Wait
Start-Process -FilePath "mingw64.exe" -ArgumentList "pacman -S mingw-w64-x86_64-gcc" -Wait
