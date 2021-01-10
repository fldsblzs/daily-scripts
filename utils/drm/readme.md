# drm

1. Reference the script in your PowerShell profile

```PowerShell
. C:\_repos\ps-scripts\utils\docker.ps1
```

2. Set aliases for the functions

```PowerShell
New-Alias -Name drm  Remove-StoppedContainers
New-Alias -Name drmi  Remove-DanglingImages 
New-Alias -Name drmf  Remove-AllContainers
```
