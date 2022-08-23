

function Reload-Profile {
	refreshenv
	. $profile
}

function LocalDev {
    push-location C:\code\configuration\LocalDev
	$ErrorActionPreference = "Continue"
	try {
		Invoke-Expression "& .\olo-localdev.ps1 $args"
	} finally {
		$ErrorActionPreference = "Stop"
		pop-location
	}
}

#pre-req: choco install vswhere
function Invoke-MSBuild() 
{
    & 'C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\MSBuild\Current\Bin\MSBuild.exe' /nologo $args
}

function Invoke-NotepadPlusPlus(){
	& "C:\Program Files\Notepad++\notepad++.exe" $args
}



function Invoke-GitDiffTool(){
	& git difftool $args
}

function hugoprod(){
	$env:HUGO_ENV="production"
	hugo
	$env:HUGO_ENV=$null
}

Write-Host "loading profile"

$ErrorActionPreference = "Stop"

cd c:\code

#pre-req "choco install poshgit"
Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'

Set-Alias npp Invoke-NotepadPlusPlus -scope global
Set-Alias build Invoke-MSBuild -scope global
Set-Alias gdt Invoke-GitDiffTool -scope global

Write-Host "done loading profile"




