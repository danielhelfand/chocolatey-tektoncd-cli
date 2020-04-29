$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.9.0/tkn_0.9.0_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '95a957d511c1109b675f847e7d3d94a39a37a6cd3d43dc95cc662710907ba858'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
