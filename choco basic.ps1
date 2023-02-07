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