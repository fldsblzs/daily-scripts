function Set-WindowTitle {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            ValueFromPipelineByPropertyName = $true,
            Position = 0)]
        [string]
        $Name
    )
        
    process {
        $host.ui.RawUI.WindowTitle = $Name
    }
}

Export-ModuleMember -Function Set-WindowTitle