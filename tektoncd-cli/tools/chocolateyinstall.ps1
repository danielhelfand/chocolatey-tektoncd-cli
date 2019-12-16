$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.6.0/tkn_0.6.0_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '5d69844fbb2ddaeece6cb872c19c67805d96b19293d2473e2c60fa8886fb7fc7'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
