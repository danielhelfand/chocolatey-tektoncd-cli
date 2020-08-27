$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.12.0/tkn_0.12.0_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '010a16a73d69d497bf1814d66c8d1c948f9d248632d809ba4c4579a92a4bf309'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
