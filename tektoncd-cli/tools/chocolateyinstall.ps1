$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.20.0/tkn_0.20.0_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '404DE60552CA5410C519390C130B00D11EC8EB6902303BACFEBBCD16577A0A14'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
