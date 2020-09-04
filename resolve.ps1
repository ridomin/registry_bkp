$repo="https://iotmodels.github.io/registry/"
$indexJson = Invoke-WebRequest -URI $repo"model-index.json"
$index = ConvertFrom-JSON -InputObject $indexJson
$path = $index
$dtdlJson = Invoke-WebRequest -URI $repo$path
$dtdl = ConvertFrom-JSON -InputObject $dtdlJson.Content
Write-Output $dtdl
Write-Output $dtdl



