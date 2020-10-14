function Get-RobotProbes {
    Param (
            [parameter(valuefrompipeline = $true, mandatory = $true, HelpMessage = "Enter Authorization", Position = 0)]
            [System.Collections.Hashtable]$Header,
            [parameter(valuefrompipeline = $true, mandatory = $true, HelpMessage = "Enter Servername", Position = 1)]
            [string]$UIMServer,
            [parameter(valuefrompipeline = $true, mandatory = $true, HelpMessage = "Enter Servername", Position = 1)]
            [string]$Domain,
            [parameter(valuefrompipeline = $true, mandatory = $true, HelpMessage = "Enter Servername", Position = 1)]
            [string]$Hub,
            [parameter(valuefrompipeline = $true, mandatory = $true, HelpMessage = "Enter Servername", Position = 1)]
            [string]$Robot
        )
    try{

        $request = (Invoke-RestMethod -Method "POST" -Headers $Header -Uri "http://$UIMServer/uimapi/probes/$Domain/$Hub/$Robot/controller/callback/probe_list" -ContentType "application/json").pds.entry
    }catch{
        $request = $error[0] -split "`n"
    }
    return $request
 }