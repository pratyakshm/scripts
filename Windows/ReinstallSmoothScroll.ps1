# Ensure the source directory exists before attempting to copy
$sourcePath = [System.IO.Path]::Combine($env:APPDATA, "SmoothScroll")
$tempPath = [System.IO.Path]::Combine($env:TEMP, "SmoothScroll")
$destinationPath = [System.IO.Path]::Combine($env:APPDATA, "SmoothScroll")

if (Test-Path $sourcePath) {
    # Copy options.good.json from the source directory to the temporary directory
    try {
        Copy-Item -Path "$sourcePath\options.good.json" -Destination $tempPath -Force -ErrorAction Stop
        Write-Host "File 'options.good.json' copied successfully."
    } catch {
        Write-Host "Error copying 'options.good.json': $_"
        exit
    }

    # Copy options.json from the source directory to the temporary directory
    try {
        Copy-Item -Path "$sourcePath\options.json" -Destination $tempPath -Force -ErrorAction Stop
        Write-Host "File 'options.json' copied successfully."
    } catch {
        Write-Host "Error copying 'options.json': $_"
        exit
    }
} else {
    Write-Host "Error: Source directory not found. SmoothScroll may not be installed."
    exit
}

# Uninstall SmoothScroll
Write-Host "Uninstalling SmoothScroll..."
$uninstallerPath = "C:\Users\$env:username\AppData\Local\SmoothScroll\app-1.2.4.0\unins000.exe"
$registryPath = "HKCU:\Software\SmoothScroll"

# Check if the uninstaller file exists before attempting to uninstall
if (Test-Path $uninstallerPath) {
    Start-Process -FilePath $uninstallerPath -ArgumentList "/VERYSILENT", "/SUPPRESSMSGBOXES", "/NORESTART" -Wait
    Remove-Item -Path $registryPath -ErrorAction SilentlyContinue
    Write-Host "SmoothScroll uninstalled successfully."
} else {
    Write-Host "Error: Uninstaller not found. SmoothScroll may not be installed."
}

# Download SmoothScroll
$installerUrl = "https://www.smoothscroll.net/win/download/SmoothScroll_Setup.exe"  # Replace with the actual download URL
$installerPath = "$env:TEMP\SmoothScroll_Setup.exe"  # You can change this to your preferred temporary directory

# Check if the download is successful before proceeding
try {
    $null = Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath -ErrorAction Stop -OutVariable output
    Write-Host "SmoothScroll downloaded successfully."
} catch {
    Write-Host "Error downloading SmoothScroll: $_"
    exit
}

Start-Process -FilePath $installerPath -ArgumentList "/VERYSILENT", "/SUPPRESSMSGBOXES" -Wait
Write-Host "Sleeping for 5s..."

# Introduce a loop to wait for SmoothScroll to start (assuming it starts a background process)
for ($i=1; $i -le 5; $i++) {
    Write-Host "Sleeping for 1s..."
    Start-Sleep 1
}

# Stop the SmoothScroll process
Stop-Process -Name SmoothScroll -ErrorAction SilentlyContinue

# Copy options.good.json and options.json to the destination directory, replacing older files
try {
    Copy-Item -Path $tempPath -Destination $destinationPath -Force -ErrorAction Stop
    Write-Host "Files copied from $tempPath to $destinationPath successfully."
} catch {
    Write-Host "Error copying files: $_"
}

# Add an exit statement to ensure the script ends properly
exit
