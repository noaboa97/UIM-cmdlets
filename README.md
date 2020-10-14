# UIM-cmdlets
PowerShell cmdlets to interact with CA UIM / DX Infrastructur API

Tested with UIM 9.0.2
API Version:
```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<UIMAPIVersionInfo>
  <copyright>Copyright (c) 2017, CA Technologies. All rights reserved.</copyright>
  <apiName>uimapi</apiName>
  <apiVersion>9.0.2-A-SNAPSHOT</apiVersion>
  <buildDate>2018-10-24 11:45:43.668</buildDate>
  <waspVersion>0.0</waspVersion>
</UIMAPIVersionInfo>
```

## Connect-UIMServer

A window to enter your credentials will popup. The function will create the authentication header for the requests. 

```
$auth = Connect-UIMServer
```


## Get-UIMRobots

Will output all Robots from the specified server
```
$Robots = Get-UIMRobots -Header $auth -Server "YourUIMServername"
$Robots = Get-UIMRobots $auth "YourUIMServername"
```


## Get-RobotProbes
```
Get-RobotProbes -Header $auth -UIMServer "YourUIMServername" -Domain "YourUIMDomain" -Hub "YourUIMHubName" -Robot "YourRobotname"
```
