# K8s namespace switcher utility

1. Import the module in your `Profile.ps1`:

```PowerShell
Import-Module -Name "C:\_repos\ps-scripts\utils\k8s-ns\k8s.psm1"
```

2. Add alias for the function as you like:

> This step is optional.

```PowerShell
New-Alias -Name ns Set-K8sNamespace
```

### Usage

```PowerShell
ns default
ns monitoring
...
```