#StarShip
function Invoke-Starship-TransientFunction {
  &starship module character
}
function Invoke-Starship-PreCommand {
    $host.ui.Write("🚀 Typing: ")
}

$ENV:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"
Invoke-Expression (&starship init powershell)


#Prompt
Import-Module -Name Terminal-Icons
Import-Module -Name PSReadLine

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView


#Alias
Set-Alias v nvim
Set-Alias ll ls
Set-Alias touch ni 

