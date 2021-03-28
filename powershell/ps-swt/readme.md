# PowerShell window title utility

1. Import the module in your `Profile.ps1`:

```PowerShell
Import-Module -Name "C:\_repos\daily-scripts\powershell\ps-swt\ps.psm1"
```

2. Add alias for the function as you like:

> This step is optional.

```PowerShell
New-Alias -Name swt Set-WindowTitle
```

### Usage

```PowerShell
swt dev
swt docker
...
```