function Get-AllFromNamespace {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $false,
            ValueFromPipelineByPropertyName = $true,
            Position = 0)]
        [string]
        $Namespace
    )
        
    begin {
        if (!$Namespace) {
            Write-Output "No namespace was provided. Using current context's active namespace."
            $namespace = kubectl.exe config view --minify --output 'jsonpath={..namespace}'
            Write-Output $namespace
        }
        else {       
            if (!$(kubectl.exe get namespace $Namespace -o=name)) {
                Write-Error "Namespace not found!"
                exit
            }

            $namespace = $Namespace
        }
    }

    process {
        $resourcetypes = kubectl.exe api-resources --verbs=list --namespaced -o name | 
            Select-String -Pattern 'events.events.k8s.io' -NotMatch | 
            Select-String -Pattern 'events' -NotMatch | 
            Sort-Object |
            Get-Unique

        $currentColor = $host.UI.RawUI.ForegroundColor

        foreach ($resourcetype in $resourcetypes) {
    
            $results = kubectl.exe -n $namespace  get --ignore-not-found $resourcetype
    
            if ($results) {
                $host.UI.RawUI.ForegroundColor = "green"
                Write-Output "--------------------------------------------------------------------------"
                Write-Output "RESOURCE: $resourcetype"
                Write-Output "--------------------------------------------------------------------------"
                $host.UI.RawUI.ForegroundColor = $currentColor
                $results
            }
        }
    }
}

Export-ModuleMember -Function Get-AllFromNamespace