$processArgs = @{
    'FilePath'     = "C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe"
    'ArgumentList' = "/update user displaylevel=false forceappshutdown=true"
    'Wait'         = $true
}

if (-not (Test-Path $processArgs['FilePath'])) { throw "OfficeC2RClient.exe not found!" }
Start-Process @processArgs



