Write-Output "Verifying chocolatey is installed"
If((Test-Path "$env:ChocolateyInstall\choco.exe") -eq $False) {
	Write-FPLog -Category Info -Message "chocolatey is already installed"
	Try {
		Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
	}
	Catch {
		Write-Error -Message $_.Exception.Message
	}
}
Else {
	Write-Output "Chocolatey is already installed"
}