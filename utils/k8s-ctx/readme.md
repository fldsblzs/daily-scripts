# K8s context switcher utility

1. Import the module in your `Profile.ps1`:

```PowerShell
Import-Module -Name "C:\_repos\ps-scripts\utils\k8s-ctx\k8s.psm1"
```

2. Add a configuration file next to your `Profile.ps1`:

The `alias` should be something you can remember to use instead of the fully specified name of the context (`name`).

```json
[
    {
        "alias" : "test",
        "name": "name-of-your-test-cluster"
    },
    {
        "alias" : "prod",
        "name": "name-of-your-prod-cluster"
    },
    ...
]
```

3. Add wrapper function to handle dynamic parameters for context name and reference the configuration file as a constant:

```PowerShell
function Use-SwitchK8sContext {
    param (
        [string] $context
    )
   
    Switch-K8sContext "C:\k8sContexts.json" "$context"
}
```

4. Add alias for wrapper function as you like:

> This step is optional.

```PowerShell
New-Alias -Name ctx Use-SwitchK8sContext
```

### Usage

```PowerShell
ctx "test"
ctx "prod"
...
```