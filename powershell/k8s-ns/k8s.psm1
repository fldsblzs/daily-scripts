function Set-K8sNamespace {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            ValueFromPipelineByPropertyName = $true,
            Position = 0)]
        [string]
        $Namespace,

        [Parameter(
            Mandatory = $false,
            ValueFromPipelineByPropertyName = $true,
            Position = 1)]
        [string]
        $ListAllResources = $false
    )
        
    process {

        Write-Output "Setting k8s namespace to: $Namespace."

        kubectl.exe config set-context --current --namespace=$Namespace

        if ($ListAllResources -eq $true) {
            Write-Output "Listing all resources in namespace: $Namespace."

            kubectl.exe get all 
        }
    }
}

Export-ModuleMember -Function Set-K8sNamespace