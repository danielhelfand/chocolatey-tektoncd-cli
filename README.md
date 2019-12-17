# tkn Chocolatey Package

Chocolatey package for the [tektoncd-cli](https://github.com/tektoncd/cli) (`tkn`). To use this package, you must have [Chocolatey installed](https://chocolatey.org/docs/installation).

This package can be installed by running the following:

```
choco install tektoncd-cli --version=0.6.0
```

## Development and Testing

### Install

1. Clone this repository and make updates to the package

2. In the `tektoncd-cli` folder of this repository, run `choco pack`

3. Run `choco install tektoncd-cli -s .` to run the package locally

After running the commands above, `tkn` should be installed. You can run `tkn` to verify a successful installation.

### Uninstall

Run `choco uninstall tektoncd-cli` to uninstall tkn. 
