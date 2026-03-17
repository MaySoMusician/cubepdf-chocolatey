# Taken over from https://github.com/KageShiron/chocolatey-packages/blob/9604eafb1b63c34978ac78f1ec17a68c1d4661c2/cubepdf/tools/chocolateyinstall.ps1
# by KageShiron licensed under MIT License

$ErrorActionPreference = 'Stop';

$packageName= 'cubepdf'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.cube-soft.jp/archive/cubepdf-4.3.5.exe'
$url64      = 'https://dl.cube-soft.jp/archive/cubepdf-4.3.5-x64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'cubepdf*'

  # Checksums are calculated with the binaries downloaded from the official website, not the GitHub repository
  checksum      = 'e3b762463c98617be889602fd130c57e3af7e5879f44befeeec80d39a09f259f'
  checksumType  = 'sha256'
  checksum64    = '710e8263fdee88c6e5c8c42f9002947e6e57ba4dc3316818c1fcc3ddc1e1dfcb'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs


















