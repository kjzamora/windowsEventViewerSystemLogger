$fileDate = Get-Date -UFormat "%Y_%m_%d"
$outFilePath = "C:\logs\event_viewer\"
$fileName = "System_Errors_$($fileDate).txt"
$fileNameCsv = "System_Errors.csv"
$fullPath = $outFilePath + $fileName
$fullPathCsv = $outFilePath + $fileNameCsv

# Check for folder path and create it
If (Test-Path -Path $outFilePath)
{
    # Continue if path exist
}
else
{
    New-Item -Path $outFilePath -ItemType Directory
}

# Export csv and txt logs
$sysErrors = Get-EventLog -LogName System -EntryType Error
$sysErrors | Export-Csv $fullPathCsv -NoTypeInformation
foreach ($err in $sysErrors)
{
    $err | Format-Table -Wrap -AutoSize | Out-File -FilePath $fullPath -Append
}