$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.13.1/tkn_0.13.1_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '4057a6b44d3ac9570d58b174d4dbda9849a1ff2e7cb364a9bc76af9ceeb60166'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
