$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.10.0/tkn_0.10.0_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = 'fea66daa4330eac8f9107b1601f1a5a15262cce5ab46150450a3208d3f3b62dd'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
