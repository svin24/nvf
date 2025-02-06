{
  lib,
  config,
  ...
}:
{
  config.vim = {
    git.gitsigns = {
      enable = true;
      codeActions.enable = true;
    };

    terminal.toggleterm.lazygit = lib.mkIf config.vim.terminal.toggleterm.enable {
      enable = true;
      package = null; # use from PATH
      direction = "float";
      mappings.open = "<leader>gg";
    };
  };
}
