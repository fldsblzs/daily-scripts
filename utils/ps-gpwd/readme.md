# Get current path and set it in clipboard utility

1. Import the module in your `Profile.ps1`:

```PowerShell
Import-Module -Name "C:\_repos\ps-scripts\utils\ps-gpwd\ps.psm1"
```

2. Add alias for the function as you like:

> This step is optional.

```PowerShell
New-Alias -Name gpwd Get-PathToClipboard
```

### Usage

```PowerShell
gpwd
...
```