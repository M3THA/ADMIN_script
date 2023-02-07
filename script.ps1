##[Ps1 To Exe]
##
##Kd3HDZOFADWE8uK1
##Nc3NCtDXThU=
##Kd3HFJGZHWLWoLaVvnQnhQ==
##LM/RF4eFHHGZ7/K1
##K8rLFtDXTiW5
##OsHQCZGeTiiZ4tI=
##OcrLFtDXTiW5
##LM/BD5WYTiiZ49I=
##McvWDJ+OTiiZ4tI=
##OMvOC56PFnzN8u+Vs1Q=
##M9jHFoeYB2Hc8u+Vs1Q=
##PdrWFpmIG2HcofKIo2QX
##OMfRFJyLFzWE8uK1
##KsfMAp/KUzWJ0g==
##OsfOAYaPHGbQvbyVvnQX
##LNzNAIWJGmPcoKHc7Do3uAuO
##LNzNAIWJGnvYv7eVvnQX
##M9zLA5mED3nfu77Q7TV64AuzAgg=
##NcDWAYKED3nfu77Q7TV64AuzAgg=
##OMvRB4KDHmHQvbyVvnQX
##P8HPFJGEFzWE8tI=
##KNzDAJWHD2fS8u+Vgw==
##P8HSHYKDCX3N8u+Vgw==
##LNzLEpGeC3fMu77Ro2k3hQ==
##L97HB5mLAnfMu77Ro2k3hQ==
##P8HPCZWEGmaZ7/K1
##L8/UAdDXTlaDjofG5iZk2WXnQWcnUuGUuqOqwY+o7NbcqSreW5sZSFd+NfryOFuyTvcARv0QuN1RRh44JuIf67zXJ/SqV6sahq16c+Du
##Kc/BRM3KXxU=
##
##
##fd6a9f26a06ea3bc99616d4851b372ba
<#
.NOTES
   Author      : Nicolas Gonzalez Farabollini
   GitHub      : https://github.com/M3THA
    Version 0.0.1
#>


echo "Installing choco & basic programs"

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;

<# test if chocolatey is installed and installs basic programs #>
If(Test-Path -Path "$env:ProgramData\Chocolatey"){
    echo "Choco is already installed. Skipping to basic software instalation"
    choco install googlechrome  vlc vcredist140 winrar dotnetfx ccleaner qbittorrent 7zip mpc-hc jre8 adobereader directx -y --ignore-checksums
}
else {
    <# Action when all if and elseif conditions are false #>
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	choco install chocolatey-core.extension -y
    choco install googlechrome  vlc vcredist140 winrar dotnetfx ccleaner qbittorrent 7zip mpc-hc jre8 adobereader directx -y --ignore-checksums
}

$Shell = New-Object -ComObject "WScript.Shell"
$Button = $Shell.Popup("Click OK para finalizar.", 0, "Hello", 0)