Write-Output "Trying to install basic programs"
If((Test-Path "$env:ChocolateyInstall\choco.exe") -eq $True) {
	Write-Output "Chocolatey is installed"
	Try {
		Write-Output "Install basic programs step 03 via Chocolatey"

		Set-ExecutionPolicy Bypass -Scope Process -Force;
		$DownloadFilename = "Microsoft.VCLibs.x64.14.00.Desktop.appx"
		curl "https://aka.ms/$DownloadFilename" -o "$env:USERPROFILE\Downloads\$DownloadFilename"
		Add-AppxPackage -Path "$env:USERPROFILE\Downloads\$DownloadFilename"

		choco install -y microsoft-windows-terminal
	}
	Catch {
		Write-Error -Message $_.Exception.Message
	}
}
Else {
	Write-Output "Chocolatey is not installed"
}
