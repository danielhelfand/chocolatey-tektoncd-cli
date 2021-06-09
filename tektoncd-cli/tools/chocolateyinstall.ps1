$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.19.0/tkn_0.19.0_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '3c7f9e2699d48eab138e56562f60f80ea295c8bdd02961358c695b48556499df'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
