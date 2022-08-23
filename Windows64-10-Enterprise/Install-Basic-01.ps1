Write-Output "Trying to install basic programs"
If((Test-Path "$env:ChocolateyInstall\choco.exe") -eq $True) {
	Write-Output "Chocolatey is installed"
	Try {
		Write-Output "Install basic programs via Chocolatey"

		Set-ExecutionPolicy Bypass -Scope Process -Force;
		Add-AppxPackage -Path C:\vagrant\Microsoft.VCLibs.x64.14.00.Desktop.appx
		choco install -y microsoft-windows-terminal
	}
	Catch {
		Write-Error -Message $_.Exception.Message
	}
}
Else {
	Write-Output "Chocolatey is not installed"
}
