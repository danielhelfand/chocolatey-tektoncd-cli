$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.17.2/tkn_0.17.2_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '4b2e77cd9c48b7757717b92b2d00de6bdec0269cad0e815e2b16ae9282d80d8f'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
