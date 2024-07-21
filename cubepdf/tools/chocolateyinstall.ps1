# Taken over from https://github.com/KageShiron/chocolatey-packages/blob/9604eafb1b63c34978ac78f1ec17a68c1d4661c2/cubepdf/tools/chocolateyinstall.ps1
# by KageShiron licensed under MIT License

$ErrorActionPreference = 'Stop';

$packageName= 'cubepdf'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.cube-soft.jp/archive/cubepdf-4.0.0.exe'
$url64      = 'https://dl.cube-soft.jp/archive/cubepdf-4.0.0-x64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'cubepdf*'

  # Checksums are calculated with the binaries downloaded from the official website, not the GitHub repository
  checksum      = '01f4ad75924cdf99e12f74fe0f48d4b36122c845e801cd35c84c080d6a9b96e1'
  checksumType  = 'sha256'
  checksum64    = '35ef7578da26538bdb37f264d0e341a9f9e179517da44b17e96c3b6582d80b1b'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs


















