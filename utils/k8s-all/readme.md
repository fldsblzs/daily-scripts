# K8s namespace scanner utility

Gets all resources in the specified namespace. If the namespace was not provided it will use the active namespace from current context.

1. Import the module in your `Profile.ps1`:

```PowerShell
Import-Module -Name "C:\_repos\ps-scripts\utils\k8s-all\k8s.psm1"
```

2. Set an alias for the function:

> This step is optional.

```PowerShell
New-Alias -Name all Get-AllFromNamespace
```

## Usage

### Get all resources from a specified namespace

```PowerShell
all example-namespace
```

### Get all resources from the current context's active namespace

```PowerShell
# Currently in namespace: default
all # Lists all resources from the default namespace
```