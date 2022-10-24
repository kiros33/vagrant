oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\robbyrussel.omp.json" | Invoke-Expression
Import-Module -Name Terminal-Icons
set-alias subl "C:\Program Files\Sublime Text\subl.exe"

##
# PSReadLine, see https://github.com/PowerShell/PSReadLine
##

## behaviour of Tab key autocomplete
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
## From docs:
## With these bindings, up arrow/down arrow will work like PowerShell/cmd if the
## current command line is blank. If you've entered some text though, it will
## search the history for commands that start with the currently entered text.
##
## Like zsh completion.
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
	Import-Module "$ChocolateyProfile"
}