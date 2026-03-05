# Taken over from https://github.com/KageShiron/chocolatey-packages/blob/9604eafb1b63c34978ac78f1ec17a68c1d4661c2/cubepdf/tools/chocolateyinstall.ps1
# by KageShiron licensed under MIT License

$ErrorActionPreference = 'Stop';

$packageName= 'cubepdf'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.cube-soft.jp/archive/cubepdf-4.3.4.exe'
$url64      = 'https://dl.cube-soft.jp/archive/cubepdf-4.3.4-x64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'cubepdf*'

  # Checksums are calculated with the binaries downloaded from the official website, not the GitHub repository
  checksum      = 'bd1b42d4a1c8886b13a364ee8ec1623e98cc53ec87e82acc33cebf27a2e4398c'
  checksumType  = 'sha256'
  checksum64    = 'be288090b5595a0095ea91b60f464225b28e07f8b99c37f63821d557e9bf3fcd'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs


















