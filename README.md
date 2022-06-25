# Dotfiles

> Note: please do not use these as-is and modify them to match your configuration instead.

## Installation

```sh
$ sh -c "$(curl -fsLS chezmoi.io/get)"
$ chezmoi init --apply https://git.catvibers.me/botato/dotfiles
$ chezmoi git -- submodule init
$ chezmoi git -- submodule update
```
