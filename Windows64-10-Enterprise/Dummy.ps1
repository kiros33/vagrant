# Dummy

function GetMessage {
	$output = "Return Message from GetMessage()"
	Write-Debug $output
	return $output
}

$result = GetMessage
Write-Output("Result = $result")

Get-Date -Format "yyyy-MM-dd HH:mm:ss" > $HOME\dummy.txt

