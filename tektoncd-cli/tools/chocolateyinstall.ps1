$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.19.1/tkn_0.19.1_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = 'fdc7ee5c93ad1a8ee183caba6072bfea104c7971e2c3ebf1e06905037aeb7143'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
