function Get-K8sLogs {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            ValueFromPipelineByPropertyName = $true,
            Position = 0)]
        [string]
        $Pod,

        [Alias("s")]
        [Parameter(
            Mandatory = $false,
            ValueFromPipelineByPropertyName = $true,
            Position = 1)]
        [string]
        $Since,

        [Alias("f")]
        [Parameter(
            Mandatory = $false,
            ValueFromPipelineByPropertyName = $true,
            Position = 2)]
        [string]
        $FilePath
    )
        
    process {
        $currentColor = $host.UI.RawUI.ForegroundColor
        $host.UI.RawUI.ForegroundColor = "green"

        if ($Since) {
            Write-Output "Collecting logs for $Pod since $Since..."
            $logs = kubectl.exe logs $Pod --timestamps=true --since=$Since
        }
        else {
            Write-Output "Collecting all logs for $Pod..."
            $logs = kubectl.exe logs $Pod --timestamps=true  
        }

        Write-Output "Logs collected for $Pod."

        if ($FilePath) {
            Write-Output "Saving logs to $FilePath..."
            $logs > $FilePath
            Write-Output "Logs saved."
        }
        else {
            $host.UI.RawUI.ForegroundColor = $currentColor
            $logs
        }
    }
}

Export-ModuleMember -Function Get-K8sLogs