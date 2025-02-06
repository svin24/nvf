{
  inputs,
  ...
}:
let
  modulesDir = inputs.self + /modules/nixvim;
  modules.imports = with builtins; map (mod: "${modulesDir}/${mod}") (attrNames (readDir modulesDir));

  mkNvimConf =
    pkgs: modules:
    (inputs.nvf.lib.neovimConfiguration {
      inherit pkgs modules;
    }).neovim;
in
{
  perSystem =
    { pkgs, ... }:
    {
      packages = {
        nvf = mkNvimConf pkgs [ modules ];
      };
    };
}
