function Start-K8sPodShell {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            ValueFromPipelineByPropertyName = $true,
            Position = 0)]
        [string]
        $Pod
    )
        
    process { 
        kubectl.exe exec --stdin --tty $Pod -- /bin/sh
    }
}

Export-ModuleMember -Function Start-K8sPodShell