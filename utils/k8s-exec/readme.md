# K8s exec utility

1. Import the module in your `Profile.ps1`:

```PowerShell
Import-Module -Name "C:\_repos\ps-scripts\utils\k8s-exec\k8s.psm1"
```

2. Add alias for the function as you like:

> This step is optional.

```PowerShell
New-Alias -Name exec Start-K8sPodShell
```

### Usage

```PowerShell
exec pod-name
```