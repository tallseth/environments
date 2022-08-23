Set-ExecutionPolicy Bypass -Scope Process -Force; 
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco feature enable -n allowGlobalConfirmation
choco install git
choco install github-desktop
choco install everything
choco install notepadplusplus
choco install poshgit
choco install vscode
choco install golang
choco install dbeaver
choco install googlechrome
choco install p4merge