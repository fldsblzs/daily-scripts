function Get-PathToClipboard {
    [CmdletBinding()]
    param ()
        
    process {
        $path = Get-Location
        Set-Clipboard -Value $path
    }
}

Export-ModuleMember -Function Get-PathToClipboard