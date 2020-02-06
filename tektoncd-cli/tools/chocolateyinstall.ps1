$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.7.1/tkn_0.7.1_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '592c79c96fce12b8e8dc4f853c1d8d6fac76e18ac7a3b2118d44a238a5274875'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
