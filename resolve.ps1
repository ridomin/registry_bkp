$repo="https://iotmodels.github.io/registry/"
$indexJson = Invoke-WebRequest -URI $repo"model-index.json"
$index = ConvertFrom-JSON -InputObject $indexJson
$model = $index.'dtmi:my:device:model;1'
$path = $repo + $model.path
$rootJson = Invoke-WebRequest -URI $path

$dtdl = ConvertFrom-JSON -InputObject $rootJson.Content
Write-Output $dtdl.'@id' $path
$model.depends | ForEach-Object { Write-Output "$model[$_].path"}

