Write-Output "========================================"
Write-Output "Trying to install basic programs step 04"

If((Test-Path "$env:LOCALAPPDATA\Microsoft\WindowsApps\winget.exe") -eq $True) {
	Write-Output ("  " + "App Installer is installed")
	Try {
		Write-Output ("  " + "Install basic programs step 04 via App Installer");
		Set-ExecutionPolicy Bypass -Scope Process -Force;
		
		Write-Output ("  " + "Uninstall unnecessary software")
		winget uninstall Microsoft.Xbox.TCUI_8wekyb3d8bbwe
		winget uninstall Microsoft.XboxApp_8wekyb3d8bbwe
		winget uninstall Microsoft.XboxIdentityProvider_8wekyb3d8bbwe
		winget uninstall Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe
		winget uninstall Microsoft.XboxGamingOverlay_8wekyb3d8bbwe
		winget uninstall Microsoft.XboxGameOverlay_8wekyb3d8bbwe
		winget uninstall Microsoft.ZuneMusic_8wekyb3d8bbwe
		winget uninstall Microsoft.ZuneVideo_8wekyb3d8bbwe
		winget uninstall Microsoft.SkypeApp_kzf8qxf38zg5c
	}
	Catch {
		Write-Error -Message $_.Exception.Message
	}
}
Else {
	Write-Output ("  " + "App Installer is not installed")
}
