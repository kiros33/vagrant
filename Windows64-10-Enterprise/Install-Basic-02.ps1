Write-Output "========================================"
Write-Output "Trying to install basic programs step 02"

If((Test-Path "$env:ChocolateyInstall\choco.exe") -eq $True) {
	Write-Output ("  " + "Chocolatey is installed")
	Try {
		Write-Output ("  " + "Install basic programs step 03 via Chocolatey")

		Set-ExecutionPolicy Bypass -Scope Process -Force;
		choco install -y d2codingfont
		choco install -y 7zip
		choco install -y everything
		choco install -y jq
	}
	Catch {
		Write-Error -Message $_.Exception.Message
	}
}
Else {
	Write-Output ("  " + "Chocolatey is not installed")
}
