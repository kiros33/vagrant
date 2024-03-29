Write-Output "========================================"
Write-Output "Trying to install basic programs step 02"

If((Test-Path "$env:ChocolateyInstall\choco.exe") -eq $True) {
	Write-Output ("  " + "Chocolatey is installed")
	Try {
		Write-Output ("  " + "Install basic programs step 03 via Chocolatey")

		Set-ExecutionPolicy Bypass -Scope Process -Force;
		choco install -y d2codingfont
		choco install -y 7zip unrar
		choco install -y everything
		choco install -y qdir
		choco install -y sublimetext4
		choco install -y oh-my-posh
		choco install -y terminal-icons.powershell
		choco install -y pyenv-win
		choco install -y git
		choco install -y copyq
	}
	Catch {
		Write-Error -Message $_.Exception.Message
	}
}
Else {
	Write-Output ("  " + "Chocolatey is not installed")
}
