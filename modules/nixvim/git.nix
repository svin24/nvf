{
  config.vim = {
    git.gitsigns = {
      enable = true;
      codeActions.enable = true;
    };

    terminal.toggleterm.lazygit = {
      enable = true;
      package = null; # use from PATH
      direction = "float";
      mappings.open = "<leader>gg";
    };
  };
}
