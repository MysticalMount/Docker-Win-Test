# Deploy IIS to Nano Server using pre-downloaded Nano server packages

Start-Transcript -Path C:\Deploy\Deploy.Log

$IISPackage = ("C:\Deploy\NanoIIS1.cab", "C:\Deploy\NanoIIS2.cab")

Write-Output "Enabling IIS-Webserver"

ForEach($PackageString in $IISPackage)
{
	Write-Output $PackageString
	
	Add-WindowsPackage -Online -PackagePath $PackageString
	Add-WindowsPackage -Online -PackagePath $PackageString
}

Stop-Transcript