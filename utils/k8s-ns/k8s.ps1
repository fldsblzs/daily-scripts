function Set-K8sNamespace {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            ValueFromPipelineByPropertyName = $true,
            Position = 1)]
        [string]
        $Namespace
    )
        
    process {

        kubectl.exe config set-context --current --namespace=$Namespace
        kubectl.exe get all 
    }
}

Set-K8sNamespace asd