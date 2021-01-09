### Setup
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser

### Update oh-my-posh
Update-Module -Name oh-my-posh -AllowPrerelease -Scope CurrentUser

### Powershell profile
Import-Module posh-git
Import-Module oh-my-posh
Set-Prompt
Set-Theme Paradox