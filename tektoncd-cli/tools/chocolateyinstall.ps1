$ErrorActionPreference = 'Stop'; 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'tektoncd-cli'
$url64       = 'https://github.com/tektoncd/cli/releases/download/v0.17.0/tkn_0.17.0_Windows_x86_64.zip' 

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'tektoncd-cli*' 
  checksum64     = 'f7b380d43499693137240883502cdf18bc42f6d15f5cc23991dac6488c8d93f1'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
