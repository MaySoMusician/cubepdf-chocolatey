# Taken over from https://github.com/KageShiron/chocolatey-packages/blob/9604eafb1b63c34978ac78f1ec17a68c1d4661c2/cubepdf/tools/chocolateyinstall.ps1
# by KageShiron licensed under MIT License

$ErrorActionPreference = 'Stop';

$packageName= 'cubepdf'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.cube-soft.jp/archive/cubepdf-4.3.6.exe'
$url64      = 'https://dl.cube-soft.jp/archive/cubepdf-4.3.6-x64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'cubepdf*'

  # Checksums are calculated with the binaries downloaded from the official website, not the GitHub repository
  checksum      = 'c19d22c1c486f0de1cada95e45fbcf1aabc4b207e0412202b740687a84680daa'
  checksumType  = 'sha256'
  checksum64    = '7b8b20b1080a8d94cf3dfbb5ed8b556b0ae93be1591c0cd13eddb741222173ab'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs


















