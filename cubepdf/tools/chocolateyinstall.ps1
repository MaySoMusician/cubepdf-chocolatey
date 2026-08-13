# Taken over from https://github.com/KageShiron/chocolatey-packages/blob/9604eafb1b63c34978ac78f1ec17a68c1d4661c2/cubepdf/tools/chocolateyinstall.ps1
# by KageShiron licensed under MIT License

$ErrorActionPreference = 'Stop';

$packageName= 'cubepdf'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.cube-soft.jp/archive/cubepdf-4.3.7.exe'
$url64      = 'https://dl.cube-soft.jp/archive/cubepdf-4.3.7-x64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'cubepdf*'

  # Checksums are calculated with the binaries downloaded from the official website, not the GitHub repository
  checksum      = '17c078dd91e06c602f2cb8436b79c7cc1cebc6af7d3e99c19a8031e48516123e'
  checksumType  = 'sha256'
  checksum64    = '7e7da70399916474e030acf5dfc73cf7f2fb9ad93991b5515ec03560820ac880'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs


















