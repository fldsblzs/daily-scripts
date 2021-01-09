function Switch-K8sContext {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            ValueFromPipelineByPropertyName = $true,
            Position = 0)]
        [string]
        $ContextsJson,

        [Parameter(
            Mandatory = $false,
            ValueFromPipelineByPropertyName = $true,
            Position = 1)]
        [string]
        $Context
    )
        
    begin {
        if (Test-Path -Path $ContextsJson) {
            $contexts = @{}
            Get-Content -Path $ContextsJson | Out-String | ConvertFrom-Json | ForEach-Object {
                $contexts.Add($_.alias, $_.name)
            }        
        }
        else {
            Write-Error "Invalid contexts json file: '$ContextsJson'."
        }
    }

    process {
        if ($contexts.ContainsKey($Context)) {
            kubectl.exe config use-context $contexts[$Context]
        }
        else {
            $isContextValid = $false
            $availableContexts = kubectl.exe config get-contexts -o=name 
            $availableContexts | ForEach-Object {
                if ($_ -eq $Context) {
                    $isContextValid = $true
                }
            }
    
            if (!$isContextValid) {
                Write-Error "No valid context found for '$Context'."
            }
            else {
                kubectl.exe config use-context $Context
            }
        }
    }
}

Switch-K8sContext C:\Users\folde\OneDrive\Documents\PowerShell\k8sContexts.json prod