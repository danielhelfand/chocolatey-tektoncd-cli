$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.17.1/tkn_0.17.1_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '1b4aec72752f9e20462374d314e48138fdab2b951500d24580f8c750233ae460'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
