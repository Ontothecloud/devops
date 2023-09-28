<#
=============================================================================================
Name:           Installing Chocolately
Description:    Chocolatey is a package manager and software management solution unlike any you've ever experienced on Windows. Think of it like this - you create a software deployment package using a little PowerShell, then you can deploy it anywhere you have Windows with everything (like Puppet, SCCM, Altiris, Connectwise Automate, etc).

Please inspect https://community.chocolatey.org/install.ps1 prior to running any of these scripts to ensure safety. We already know it's safe, but you should verify the security and contents of any script from the internet you are not familiar with. All of these scripts download a remote PowerShell script and execute it on your machine. We take security very seriously


Run PowerShell as Administrator
Run Get-ExecutionPolicy. If it returns Restricted, then run Set-ExecutionPolicy AllSigned or Set-ExecutionPolicy Bypass.
If you don't see any errors, you are ready to use Chocolatey! Type choco or choco -? now, or see Getting Started for usage instructions.


Chocolately Documentation:  https://docs.chocolatey.org/en-us/getting-started
============================================================================================
#>

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))