# tkn Chocolatey Package

Chocolatey package for the [tektoncd-cli](https://github.com/tektoncd/cli) (`tkn`). To use this package, you must have [Chocolatey installed](https://chocolatey.org/docs/installation).

### Install

Since this package has not been contributed to Chocolatey at this time, you must do the following to use this to install `tkn`:

1. Clone this repository.

2. At the root of this repository, run `choco pack`.

3. Run `choco install tektoncd-cli -s .`

After running the commands above, `tkn` should be installed. You can run `tkn` to verify a successful installation.

### Uninstall

Run `choco uninstall tektoncd-cli` to uninstall tkn. 
