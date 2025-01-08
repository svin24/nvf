{
  inputs,
  ...
}:
let
  modulesDir = inputs.self + /modules;
  modules.imports = with builtins; map (mod: "${modulesDir}/${mod}") (attrNames (readDir modulesDir));

  mkNvimConf =
    pkgs: modules:
    (inputs.nvf.lib.neovimConfiguration {
      inherit pkgs modules;
    }).neovim;
in
{
  perSystem =
    { self', pkgs, ... }:
    {
      packages = {
        neovim = mkNvimConf pkgs [ modules ];
        default = self'.packages.neovim;
      };
    };
}
