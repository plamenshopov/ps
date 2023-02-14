try {
    $ErrorActionPreference = "Stop"

    Invoke -ComputerName $PCname -ScriptBlock {
    ben{
        Write-Output ""
        Write-Output "$($PSStyle.bold)Beginning the check$($PSStyle.bold)"
        
    }

    proce {
        get-process | Where-Object name -like Veeam.Guest.Interaction.Proxy
    }

    end{
        Write-Output ""
        Write-Host "$($PSStyle.bold)The check is completed$($PSStyle.bold)"
    }
    }
} 
    catch {
        $ErrorMessage = $_.Exception.Message
        Write-Output $ErrorMessage
        exit(1)}