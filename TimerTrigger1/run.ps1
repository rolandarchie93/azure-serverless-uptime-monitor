param($Timer)

# Website to monitor
$website = "https://www.google.com"

try {
    # Send web request
    $response = Invoke-WebRequest -Uri $website -UseBasicParsing -TimeoutSec 10

    # Capture status code
    $statusCode = $response.StatusCode

    Write-Host "=================================================="
    Write-Host "Website Check Successful"
    Write-Host "Website: $website"
    Write-Host "Status Code: $statusCode"
    Write-Host "Time: $(Get-Date)"
    Write-Host "=================================================="
}
catch {
    Write-Host "=================================================="
    Write-Host "Website Check FAILED"
    Write-Host "Website: $website"
    Write-Host "Error: $($_.Exception.Message)"
    Write-Host "Time: $(Get-Date)"
    Write-Host "=================================================="
}
