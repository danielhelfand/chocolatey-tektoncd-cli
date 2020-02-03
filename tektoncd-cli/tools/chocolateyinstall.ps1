$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.7.0/tkn_0.7.0_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '02116C94D1BF18F65BF8B39531F2F65D8ADBF1D0438D78B72A9F04FE1876EB57'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
