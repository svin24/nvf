# annt's nvf

The following project is a my personally curated configuration for
[neovim](https://neovim.io).

This configuration is written using Nix. This allows me to easily use this
customized configuration on any machine with Nix installed. There is no package
manager step, everything is handled behind the scenes by
[Nix](https://nixos.org) +
[nixpkgs](https://search.nixos.org/packages?channel=unstable&type=packages&query=vimPlugins) +
[nvf](https://github.com/NotAShelf/nvf).

> [!TIP]
> This configuration is the successor of my
> [nixvim](https://github.com/anntnzrb/nixvim) configuration.

## Goals

- Avoid raw _lua/vimscript_ code as much as possible to favor _nixification_;
  `nvf` should handle the configuration via modules

## Get It

You may try this Neovim configuration without installation. This does not affect
your configuration.

```sh
nix run github:anntnzrb/nvf
```

You can also alias the above command for convenience.

```sh
alias e='nix run github:anntnzrb/nvf --'

# open any file
e ~/.bashrc
```

### Installing via Nix Profiles

The following will provide the `nvim` command:

```sh
nix profile install github:anntnzrb/nvf
```

## COPYING

Refer to the [COPYING](./COPYING) file for licensing information.

Unless otherwise noted, all code herein is distributed under the terms of the
[GNU General Public License Version 3 or later](https://www.gnu.org/licenses/gpl-3.0.en.html).
