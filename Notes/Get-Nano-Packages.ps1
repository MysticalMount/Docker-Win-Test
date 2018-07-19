Save-Module -Path "$Env:ProgramFiles\WindowsPowerShell\Modules\" -Name NanoServerPackage -MinimumVersion 1.0.1.0
Import-PackageProvider NanoServerPackage
Find-NanoServerPackage
Save-NanoServerPackage -Name Microsoft-NanoServer-IIS-Package -Culture en-us -Path C:\Install