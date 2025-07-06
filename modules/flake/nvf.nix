{
  lib,
  inputs,
  ...
}:
let
  inherit (builtins) readDir;
  inherit (lib)
    filter
    elem
    attrNames
    ;

  modulesDir = inputs.self + "/modules/nixvim";
  ignoredModules = [
    #"${modulesDir}/misc.nix"
  ];

  modules.imports = map (mod: "${modulesDir}/${mod}") (
    filter (name: !(elem "${modulesDir}/${name}" ignoredModules)) (attrNames (readDir modulesDir))
  );

  mkNvimConf = pkgs: modules: (inputs.nvf.lib.neovimConfiguration { inherit pkgs modules; }).neovim;
in
{
  perSystem =
    { self', pkgs, ... }:
    {
      packages = {
        nvf = mkNvimConf pkgs [ modules ];
        default = self'.packages.nvf;
      };
    };
}
