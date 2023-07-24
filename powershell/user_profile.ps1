# StarShip
function Invoke-Starship-TransientFunction {
	  &starship module character
}
function Invoke-Starship-PreCommand {
	    $host.ui.Write("🚀 Typing: ")
}

$ENV:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"
Invoke-Expression (&starship init powershell)

# Prompt
Import-Module posh-git
Import-Module -Name Terminal-Icons
Import-Module -Name PSReadLine

Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Key Tab -Function Complete

# Alias
Set-Alias ll ls
Set-Alias touch ni 
Set-Alias vim nvim
# Utilities
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue | 
		Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
