# Enable TLSv1.2 for compatibility with older clients
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor [System.Net.SecurityProtocolType]::Tls12

$Download_CMD = 'https://github.com/NaeemBolchhi/Get-Office-365/GO365-20240915192943.cmd'

$Download_EXE = 'https://officecdn.microsoft.com/pr/wsus/setup.exe'

$Download_XML = 'https://github.com/NaeemBolchhi/Get-Office-365/Configuration.xml'

New-Item -Path "$env:TEMP\" -Name "TmFlZW1Cb2xjaGhp" -ItemType Directory

$FilePath_CMD = "$env:TEMP\TmFlZW1Cb2xjaGhp\GO365.cmd"

$FilePath_EXE = "$env:TEMP\TmFlZW1Cb2xjaGhp\setup.exe"

$FilePath_XML = "$env:TEMP\TmFlZW1Cb2xjaGhp\Configuration.xml"

try {
    Invoke-WebRequest -Uri $Download_EXE -UseBasicParsing -OutFile $FilePath_EXE
	try {
		Invoke-WebRequest -Uri $Download_XML -UseBasicParsing -OutFile $FilePath_XML
		try {
			Invoke-WebRequest -Uri $Download_CMD -UseBasicParsing -OutFile $FilePath_CMD
		} catch {
			Write-Error $_
			Return
		}
	} catch {
		Write-Error $_
		Return
	}
} catch {
    Write-Error $_
	Return
}

if (Test-Path $FilePath_CMD) {
    Start-Process $FilePath_CMD -Wait
    Remove-Item -Path "$env:TEMP\TmFlZW1Cb2xjaGhp" -Recurse
}