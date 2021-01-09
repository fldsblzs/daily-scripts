function Set-GitUser {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            ValueFromPipelineByPropertyName = $true,
            Position = 0)]
        [string]
        $Name,

        [Parameter(
            Mandatory = $true,
            ValueFromPipelineByPropertyName = $true,
            Position = 1)]
        [string]
        $Email,
   
        [Parameter(
            Mandatory = $false,
            ValueFromPipelineByPropertyName = $true,
            Position = 2)]
        [string]
        $Repository
    )
    
    begin {
        $context = ""

        Write-Output "Determining script scope..."

        if ($Repository) {
            Write-Output "Script is running at local scope."

            if ($Repository -eq ".") {
                $context = Get-Location
            }
            else {
                if (!(Test-Path -Path $Repository)) {
                    Write-Error "Invalid repository path: '$Repository'"
                    exit;
                }

                $context = $Repository
            }
        }
        else {
            Write-Output "Script is at global scope."
        }
    }
    
    process {
        $originalContext = Get-Location

        if ($context -ne "") {
            Write-Output "Updating git configuration at local scope..."
            
            Set-Location -Path $context.Path
            
            git.exe config user.name $Name
            git.exe config user.email $Email
            
        }
        else {
            Write-Output "Updating git configuration at global scope..."

            Set-Location -Path "C:/"

            git.exe config --global user.name $Name
            git.exe config --global user.email $Email
        }       
        
        Write-Output "Updated configuration:"
        
        git.exe config user.name
        git.exe config user.email

        Set-Location -Path $originalContext.Path
    }
}