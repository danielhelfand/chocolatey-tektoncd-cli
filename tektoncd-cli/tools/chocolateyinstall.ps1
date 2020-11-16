$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.14.0/tkn_0.14.0_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = '4ee8026a54ce9900724e4bce9411d5b711797246c5a8b14574081427e329991c'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
