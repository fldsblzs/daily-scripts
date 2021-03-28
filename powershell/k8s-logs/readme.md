# K8s logs utility

1. Import the module in your `Profile.ps1`:

```PowerShell
Import-Module -Name "C:\_repos\daily-scripts\powershell\k8s-logs\k8s.psm1"
```

2. Add alias for the function as you like:

> This step is optional.

```PowerShell
New-Alias -Name logs Get-K8sLogs
```

### Usage

```PowerShell
# Dump all logs for a pod
logs pod-name

# Dump logs since a time period
logs pod-name 5m
logs pod-name -s 1h

# Save logs to a .txt file
logs pod-name -f C:\temp\logs.txt
logs pod-name -s 3h -f C:\temp\logs.txt
```