$metaresponse=Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -Uri "http://169.254.169.254/metadata/instance?api-version=2021-02-01"
$metaresponse | ConvertTo-Json -Depth 64 > metadata.json
$dataKey="compute"
$metaresponse | select -exp $datakey