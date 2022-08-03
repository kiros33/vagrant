Write-Output "Trying to install basic programs"
If((Test-Path "$env:ChocolateyInstall\choco.exe") -eq $True) {
	Write-Output "Chocolatey is installed"
	Try {
		Write-Output "Upgrading Chocolatey"

		Set-ExecutionPolicy Bypass -Scope Process -Force;
		choco install -y d2codingfont
		choco install -y 7zip
	}
	Catch {
		Write-Error -Message $_.Exception.Message
	}
}
Else {
	Write-Output "Chocolatey is not installed"
}
