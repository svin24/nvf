# svin's nvf based on annt's

The following project is a my personally curated configuration for
[neovim](https://neovim.io).

This configuration is written using Nix. This allows me to easily use this
customized configuration on any machine with Nix installed. There is no package
manager step, everything is handled behind the scenes by
[Nix](https://nixos.org) +
[nixpkgs](https://search.nixos.org/packages?channel=unstable&type=packages&query=vimPlugins) +
[nvf](https://github.com/NotAShelf/nvf).

## Get It

You may try this Neovim configuration without installation. This does not affect
your configuration.

```sh
nix run github:svin24/nvf
```

You can also alias the above command for convenience.

```sh
alias e='nix run github:svin24/nvf --'

# open any file
e ~/.bashrc
```

### Installing via Nix Profiles

The following will provide the `nvim` command:

```sh
nix profile install github:svin24/nvf
```

## COPYING

Refer to the [COPYING](./COPYING) file for licensing information.

Unless otherwise noted, all code herein is distributed under the terms of the
[GNU General Public License Version 3 or later](https://www.gnu.org/licenses/gpl-3.0.en.html).
