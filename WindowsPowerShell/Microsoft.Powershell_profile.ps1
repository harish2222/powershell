Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Invoke-Expression (&starship init powershell)
$ENV:STARSHIP_CONFIG = "$HOME\.starship\config.toml"
