Invoke-WebRequest `
  -Uri "https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe" `
  -OutFile ".\miniconda.exe"

Start-Process -FilePath ".\miniconda.exe" -ArgumentList "/S" -Wait
Remove-Item ".\miniconda.exe"
