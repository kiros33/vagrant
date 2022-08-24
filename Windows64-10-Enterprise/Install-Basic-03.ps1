Write-Output "========================================"
Write-Output "Trying to install basic programs step 03"

If((Test-Path "$env:ChocolateyInstall\choco.exe") -eq $True) {
	Write-Output ("  " + "Chocolatey is installed")
	Try {
		Write-Output ("  " + "Install basic programs step 03 via Chocolatey");
		Set-ExecutionPolicy Bypass -Scope Process -Force;
		
		Write-Output ("  " + "Add a Nuget package source")
		# Add a package source
		Register-PackageSource -Name Nuget -Location "http://www.nuget.org/api/v2" -ProviderName Nuget -Trusted -Force

		Write-Output ("  " + "Install Microsoft.UI.Xaml 2.7")
		# Install-Package Microsoft.UI.Xaml -RequiredVersion 2.7
		$DownloadFilename = "Microsoft.UI.Xaml.2.7_7.2208.15002.0_x64__8wekyb3d8bbwe.Appx"

		#curl "http://tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/cadae296-3389-40c2-b927-605f7b399b78?P1=1661312193&P2=404&P3=2&P4=b2PIhi0byxEysfcB4FVZR5OwxyMTNT%2f01%2f5X8nuvTVabzNZ32va6yv1UuFp6aYhCSEkAUEMXBrsbKCcOPldJ5A%3d%3d" -o "$env:USERPROFILE\Downloads\$DownloadFilename"
		#Add-AppxPackage -Path "$env:USERPROFILE\Downloads\$DownloadFilename"
		Add-AppxPackage -Path "C:\vagrant\$DownloadFilename"

		Write-Output ("  " + "Install App Installer")
		$WingetVersion = "v1.3.431"
		$DownloadFilename = "Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
		curl "https://github.com/microsoft/winget-cli/releases/download/$WingetVersion/$DownloadFilename" -o "$env:USERPROFILE\Downloads\$DownloadFilename"
		Add-AppxPackage -Path "$env:USERPROFILE\Downloads\$DownloadFilename"
	}
	Catch {
		Write-Error -Message $_.Exception.Message
	}
}
Else {
	Write-Output ("  " + "Chocolatey is not installed")
}
