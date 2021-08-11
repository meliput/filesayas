Start-Process -FilePath 'C:\Windows\System32\calc.exe'
Start-Sleep -Seconds 20400

do
{
    Write-Output -InputObject 'Checking if calculator is running...'
    $calcProcess = Get-Process -Name Calculator -ErrorAction SilentlyContinue
    if ($calcProcess)
    {
        Write-Output -InputObject ('Calculator is running, PID {0}' -f $calcProcess.Id)
    }
    Start-Sleep -Seconds 20400
}
until (-not $calcProcess)
