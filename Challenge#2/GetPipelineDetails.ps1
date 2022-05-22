$token = $Env:PAT
$Auth = '{0}:{1}' -f '$user', $token
$Auth = [System.Text.Encoding]::UTF8.GetBytes($Auth)
$Auth = [System.Convert]::ToBase64String($Auth)
$headers = @{Authorization = ("Basic {0}" -f $Auth)}

$url = "https://dev.azure.com/ravi/_apis/distributedtask/pools/$poolid/jobrequests"

$results = Invoke-RestMethod -Uri -Headers $headers -Method Get -ContentType "application/json"

$results.value | Select-object requestid, poolid, result
