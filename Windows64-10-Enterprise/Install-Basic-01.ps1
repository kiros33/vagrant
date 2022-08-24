Write-Output "========================================"
Write-Output "Trying to install basic programs step 01"

If((Test-Path "$env:ChocolateyInstall\choco.exe") -eq $True) {
	Write-Output ("  " + "Chocolatey is installed")
	Try {
		Write-Output ("  " + "Install basic programs step 01 via Chocolatey")
		
		Write-Output ("  " + "Installing Prerequisites")
		choco install -y curl

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
	Write-Output ("  " + "Chocolatey is not installed")
}
