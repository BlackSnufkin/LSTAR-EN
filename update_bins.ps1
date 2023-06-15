$zipUrl = "https://github.com/Flangvik/ObfuscatedSharpCollection/archive/refs/heads/main.zip"
$zipFilePath = "$PSScriptRoot\main.zip"

$extractedFolder = "$PSScriptRoot\ObfuscatedSharpCollection-main"
$sharpBypassUACSourceFilePath = "$extractedFolder\NetFramework_4.7_Any\SharpBypassUAC.exe._obf.exe"
$sharpDirSourceFilePath = "$extractedFolder\NetFramework_4.7_Any\SharpDir.exe._obf.exe"
$sharpEDRCheckerSourceFilePath = "$extractedFolder\NetFramework_4.7_Any\SharpEDRChecker.exe._obf.exe"
$watsonSourceFilePath = "$extractedFolder\NetFramework_4.7_Any\Watson.exe._obf.exe"
$sharpSpraySourceFilePath = "$extractedFolder\NetFramework_4.7_Any\SharpSpray.exe._obf.exe"
$sharpHoundSourceFilePath = "$extractedFolder\NetFramework_4.7_Any\SharpHound.exe._obf.exe"
$sharpSharesSourceFilePath = "$extractedFolder\NetFramework_4.7_Any\SharpShares.exe._obf.exe"
$sharpWMISourceFilePath = "$extractedFolder\NetFramework_4.7_Any\SharpWMI.exe._obf.exe"
$sharpChromiumSourceFilePath = "$extractedFolder\NetFramework_4.7_Any\SharpChromium.exe._obf.exe"
$sharpCloudSourceFilePath = "$extractedFolder\NetFramework_4.7_Any\SharpCloud.exe._obf.exe"
$sharpWifiGrabberSourceFilePath = "$extractedFolder\NetFramework_4.7_Any\SharpWifiGrabber.exe._obf.exe"
$sharpSchTaskSourceFilePath = "$extractedFolder\NetFramework_4.7_Any\SharpTask.exe._obf.exe"

$destinationFolder = Read-Host "Enter the destination folder path (e.g., C:\Users\shorefall\Documents\tools-projects\LSTAR-EN):"
New-Item -ItemType Directory -Force -Path $destinationFolder | Out-Null

$sharpBypassUACDestinationFilePath = Join-Path -Path $destinationFolder -ChildPath "scripts\AuthPromote\SharpBypassUAC.exe"
$sharpDirDestinationFilePath = Join-Path -Path $destinationFolder -ChildPath "scripts\InfoCollect\SharpDir.exe"
$sharpEDRCheckerDestinationFilePath = Join-Path -Path $destinationFolder -ChildPath "scripts\InfoCollect\SharpEDRChecker.exe"
$watsonDestinationFilePath = Join-Path -Path $destinationFolder -ChildPath "scripts\AuthPromote\Watson.exe"
$sharpSprayDestinationFilePath = Join-Path -Path $destinationFolder -ChildPath "scripts\IntrScan\SharpSpray.exe"
$sharpHoundDestinationFilePath = Join-Path -Path $destinationFolder -ChildPath "scripts\LateMovement\SharpHound.exe"
$sharpSharesDestinationFilePath = Join-Path -Path $destinationFolder -ChildPath "scripts\LateMovement\SharpShares.exe"
$sharpWMIDestinationFilePath = Join-Path -Path $destinationFolder -ChildPath "scripts\LateMovement\sharpwmi.exe"
$sharpChromiumDestinationFilePath = Join-Path -Path $destinationFolder -ChildPath "scripts\PassCapture\SharpChromium.exe"
$sharpCloudDestinationFilePath = Join-Path -Path $destinationFolder -ChildPath "scripts\PassCapture\SharpCloud.exe"
$sharpWifiGrabberDestinationFilePath = Join-Path -Path $destinationFolder -ChildPath "scripts\PassCapture\SharpWifiGrabber.exe"
$sharpSchTaskDestinationFilePath = Join-Path -Path $destinationFolder -ChildPath "scripts\AuthMaintain\SchTask.exe" 

Write-Host "Downloading ZIP file..."
Invoke-WebRequest -Uri $zipUrl -OutFile $zipFilePath
Write-Host "ZIP file downloaded."

Write-Host "Extracting ZIP file..."
Expand-Archive -Path $zipFilePath -DestinationPath $PSScriptRoot
Write-Host "ZIP file extracted."

Copy-Item -Path $sharpBypassUACSourceFilePath -Destination $sharpBypassUACDestinationFilePath -Force
Copy-Item -Path $sharpDirSourceFilePath -Destination $sharpDirDestinationFilePath -Force
Copy-Item -Path $sharpEDRCheckerSourceFilePath -Destination $sharpEDRCheckerDestinationFilePath -Force
Copy-Item -Path $watsonSourceFilePath -Destination $watsonDestinationFilePath -Force
Copy-Item -Path $sharpSpraySourceFilePath -Destination $sharpSprayDestinationFilePath -Force
Copy-Item -Path $sharpHoundSourceFilePath -Destination $sharpHoundDestinationFilePath -Force
Copy-Item -Path $sharpSharesSourceFilePath -Destination $sharpSharesDestinationFilePath -Force
Copy-Item -Path $sharpWMISourceFilePath -Destination $sharpWMIDestinationFilePath -Force
Copy-Item -Path $sharpChromiumSourceFilePath -Destination $sharpChromiumDestinationFilePath -Force
Copy-Item -Path $sharpCloudSourceFilePath -Destination $sharpCloudDestinationFilePath -Force
Copy-Item -Path $sharpWifiGrabberSourceFilePath -Destination $sharpWifiGrabberDestinationFilePath -Force
Copy-Item -Path $sharpSchTaskSourceFilePath -Destination $sharpSchTaskDestinationFilePath -Force
Write-Host "All files replaced."
Write-Host "Cleaning up..."
Remove-Item -Path $zipFilePath
Remove-Item -Path $extractedFolder -Recurse -Force
Write-Host "Cleanup completed."
Write-Host "File replacement completed successfully."
