Write-Output "Trying to install Chocolatey"

If((Test-Path "$env:ChocolateyInstall\choco.exe") -eq $False) {
	Write-Output "Chocolatey is not installed"
	Try {
		Write-Output "Installing Chocolatey"

		Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
	}
	Catch {
		Write-Error -Message $_.Exception.Message
	}
	Finally {
		$error.clear()
	}
}
Else {
	Write-Output "Chocolatey is already installed"
}

Write-Output "Trying to upgrade Chocolatey"
If((Test-Path "$env:ChocolateyInstall\choco.exe") -eq $True) {
	Write-Output "Chocolatey is installed"
	Try {
		Write-Output "Upgrading Chocolatey"

		Set-ExecutionPolicy Bypass -Scope Process -Force;
		choco upgrade -y all
	}
	Catch {
		Write-Error -Message $_.Exception.Message
	}
	Finally {
		$error.clear()
	}
}
Else {
	Write-Output "Chocolatey is not installed"
}