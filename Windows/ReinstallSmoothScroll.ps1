# Ensure the source directory exists before attempting to copy
$sourcePath = [System.IO.Path]::Combine($env:APPDATA, "SmoothScroll")
$tempPath = [System.IO.Path]::Combine($env:TEMP, "SmoothScroll")
$destinationPath = [System.IO.Path]::Combine($env:APPDATA, "SmoothScroll")

if (Test-Path $sourcePath) {
    # Copy options.good.json from the source directory to the temporary directory
    try {
        Copy-Item -Path "$sourcePath\options.good.json" -Destination $tempPath -Force -ErrorAction Stop
    } catch {
        exit
    }

    # Copy options.json from the source directory to the temporary directory
    try {
        Copy-Item -Path "$sourcePath\options.json" -Destination $tempPath -Force -ErrorAction Stop
    } catch {
        exit
    }
} else {
    exit
}

# Uninstall SmoothScroll
$uninstallerPath = "C:\Users\$env:username\AppData\Local\SmoothScroll\app-1.2.4.0\unins000.exe"
$registryPath = "HKCU:\Software\SmoothScroll"

# Check if the uninstaller file exists before attempting to uninstall
if (Test-Path $uninstallerPath) {
    Start-Process -FilePath $uninstallerPath -ArgumentList "/VERYSILENT", "/SUPPRESSMSGBOXES", "/NORESTART" -Wait
    Remove-Item -Path $registryPath -Recurse -ErrorAction SilentlyContinue 
} else {
}

# Download SmoothScroll
$installerUrl = "https://www.smoothscroll.net/win/download/SmoothScroll_Setup.exe"  # Replace with the actual download URL
$installerPath = "$env:TEMP\SmoothScroll_Setup.exe"  # You can change this to your preferred temporary directory

# Check if the download is successful before proceeding
try {
    $null = Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath -ErrorAction Stop -OutVariable output
} catch {
    exit
}

Start-Process -FilePath $installerPath -ArgumentList "/VERYSILENT", "/SUPPRESSMSGBOXES" -Wait

$shortcutPath = "C:\Users\$env:username\Desktop\SmoothScroll.lnk"  
Remove-Item -Path $shortcutPath -Force -ErrorAction SilentlyContinue


# # Introduce a loop to wait for SmoothScroll to start (assuming it starts a background process)
# for ($i=1; $i -le 5; $i++) {
#     Start-Sleep 1
# }

# Copy options.good.json and options.json to the destination directory, replacing older files
try {
    Copy-Item -Path $tempPath -Destination $destinationPath -Force -ErrorAction Stop
} catch {
    
}



# Add an exit statement to ensure the script ends properly
exit
