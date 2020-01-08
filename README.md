# environments
Backup and share dev environment setup files.

## Windows Setup

User global .gitconfig  (C:\Users\<username>\.gitconfig)
```
[include]
	path="C:/dev/environments/<folder>/.gitconfig"
```

User Powershell profile (C:\Users\<username>\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1)
```
. C:\dev\environments\<folder>\Microsoft.PowerShell_profile.ps1
```