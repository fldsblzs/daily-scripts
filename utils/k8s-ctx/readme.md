# K8s context switcher utility

1. Reference script in `$Profile`

2. Add configuration file:

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

```PowerShell
New-Alias -Name ctx Use-SwitchK8sContext
```

### Usage

```PowerShell
ctx "test"
ctx "prod"
...
```