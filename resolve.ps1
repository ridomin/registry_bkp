$repo="https://iotmodels.github.io/registry/"
$indexJson = Invoke-WebRequest -URI $repo"model-index.json"
$index = ConvertFrom-JSON -InputObject $indexJson
$path = $index.'dtmi:contoso:toaster;2'.path
$dtdlJson = Invoke-WebRequest -URI $repo$path
$dtdl = ConvertFrom-JSON -InputObject $dtdlJson.Content
Write-Output $dtdl.'@id'
Write-Output $dtdl.contents



