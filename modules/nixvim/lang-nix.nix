{
  pkgs,
  ...
}:
{
  config.vim.languages.nix = {
    enable = true;
    format = {
      package = pkgs.nixfmt-rfc-style;
      type = "nixfmt";
    };
  };
}
