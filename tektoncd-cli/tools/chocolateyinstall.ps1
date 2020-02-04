$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.7.1/tkn_0.7.1_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '592C79C96FCE12B8E8DC4F853C1D8D6FAC76E18AC7A3B2118D44A238A5274875
'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
