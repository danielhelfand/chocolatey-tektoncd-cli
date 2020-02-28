$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.8.0/tkn_0.8.0_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = 'DCEB9CA365BD167E547BF99CCD5BE6F24CE431D353CF6C4BCDD7E3847A6ACC42'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
