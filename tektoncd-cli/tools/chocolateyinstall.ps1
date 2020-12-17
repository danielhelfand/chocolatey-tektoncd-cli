$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.15.0/tkn_0.15.0_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '77a584b7a36f5af31a9ef2b4c532f62439b7d3551464eeb317fe712270169b6f'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
