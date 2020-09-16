$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.12.1/tkn_0.12.1_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '097f1cb824ece63ba6a364db0add599e659194257076874db1128a2736159eb7'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
