function Get-UIMRobots{
    Param (
            [parameter(valuefrompipeline = $true, mandatory = $true, HelpMessage = "Enter Authorization", Position = 0)]
            [System.Collections.Hashtable]$Header,
            [parameter(valuefrompipeline = $true, mandatory = $true, HelpMessage = "Enter Servername", Position = 1)]
            [string]$Server
        )

    $request = (Invoke-RestMethod -Headers $Header -Uri "http://$Server/uimapi/robots" -ContentType "application/json").UIMRobots.UIMRobot

    return $request
}