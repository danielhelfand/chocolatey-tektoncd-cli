$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.13.0/tkn_0.13.0_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '72ed00bdc35c53ab6e69ccf606e92043cdc446c0b59b6ad90f84f14b1072efbc'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
