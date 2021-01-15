# drm

1. Import the module in your `Profile.ps1`:

```PowerShell
Import-Module -Name "C:\_repos\ps-scripts\utils\docker.ps1"
```

2. Set aliases for the functions you want to use:

> This step is optional.

```PowerShell
New-Alias -Name drm  Remove-StoppedContainers
New-Alias -Name drmi  Remove-DanglingImages 
New-Alias -Name drmf  Remove-AllContainers
```
