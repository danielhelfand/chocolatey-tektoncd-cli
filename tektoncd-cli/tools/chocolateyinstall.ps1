$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.11.0/tkn_0.11.0_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '01a55b69dbd36e4ed24f52ce05a0bdf320dc1b10d3bb44a34938d61d67c2597e'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
