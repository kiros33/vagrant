Write-Output "========================================"
Write-Output "Initialzing system"

#Set-ExecutionPolicy Bypass -Scope Process -Force;
#Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine -Force

Write-Output ("  " + "Item check boxes - Show")
New-ItemProperty -Path 'HKCU:Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'AutoCheckSelect' -Value '1' -PropertyType 'DWORD' -Force

Write-Output ("  " + "File name extensions - Show")
New-ItemProperty -Path 'HKCU:Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideFileExt' -Value '0' -PropertyType 'DWORD' -Force

Write-Output ("  " + "Hidden items - Show")
New-ItemProperty -Path 'HKCU:Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Hidden' -Value '1' -PropertyType 'DWORD' -Force
