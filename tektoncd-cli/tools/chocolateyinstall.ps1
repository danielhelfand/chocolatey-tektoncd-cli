$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.16.0/tkn_0.16.0_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '6ee610cec406525cc50aed48ebd89566ed35b9f3b41fa4194a85c0582193d059'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
