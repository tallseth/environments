function Reload-Profile {
	refreshenv
	. $profile
}

function Invoke-NotepadPlusPlus(){
	& "C:\Program Files\Notepad++\notepad++.exe" $args
}

function Invoke-GitDiffTool(){
	& git difftool $args
}

function Invoke-GitBranchClean(){
	& git branch --merged | %{$_.trim()} | ?{$_ -notmatch 'develop' -and $_ -notmatch 'master' -and $_ -notmatch 'main'} | %{git branch -d $_}
}


Write-Host "loading profile"

$ErrorActionPreference = "Stop"

#pre-req "choco install poshgit"
Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'

Set-Alias npp Invoke-NotepadPlusPlus -scope global
Set-Alias gdt Invoke-GitDiffTool -scope global
Set-Alias branchclean Invoke-GitBranchClean -scope global

Write-Host "done loading profile"




