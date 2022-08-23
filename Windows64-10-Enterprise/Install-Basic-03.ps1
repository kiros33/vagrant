Write-Output "Trying to install basic programs"
If((Test-Path "$env:ChocolateyInstall\choco.exe") -eq $True) {
	Write-Output "Chocolatey is installed"
	Try {
		Write-Output "Install basic programs via Chocolatey"

		Set-ExecutionPolicy Bypass -Scope Process -Force;
		$WingetVersion = "v1.3.431"
		Register-PackageSource -Name Nuget -Location "http://www.nuget.org/api/v2" –ProviderName Nuget -Trusted
		Install-Package Microsoft.UI.Xaml -RequiredVersion 2.7
		curl -o "$env:USERPROFILE\Downloads\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -L "https://github.com/microsoft/winget-cli/releases/download/$WingetVersion/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
		Add-AppxPackage -Path "$env:USERPROFILE\Downloads\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
	}
	Catch {
		Write-Error -Message $_.Exception.Message
	}
}
Else {
	Write-Output "Chocolatey is not installed"
}
