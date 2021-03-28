# Fire up RabbitMq instance

1. Import the module in your `Profile.ps1`:

```PowerShell
Import-Module -Name "C:\_repos\daily-scripts\powershell\rmq\rabbitmq.psm1"
```

2. Add alias for the function as you like:

> This step is optional.

```PowerShell
New-Alias -Name rmq -Value Start-RabbitMQ
```

### Usage

```PowerShell
rmq
rmq $true "my-rabbit-mq-instance"
...
```