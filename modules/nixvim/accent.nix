{ pkgs, ... }:
let
  accent-nvim = pkgs.vimUtils.buildVimPlugin {
    name = "accent-nvim";
    src = pkgs.fetchFromGitHub {
      owner = "svin24";
      repo = "accent.nvim";
      rev = "8bea94646cd4ccdaf0773968e0e7188887e8941a";
      sha256 = "1mm6qrhws8s9dm3p5wm84ca8kfpszn7qa28a3ckz6v8pi2sy4ycf";
    };
  };
in
{
  vim.extraPlugins = {
    accent-nvim = {
      package = accent-nvim;
      setup = ''
        require('accent').setup {
          -- color to use, removing this line uses a random accent color
          accent_color = 'green',
          -- custom_accent = {
          --   fg = '#73d936', -- Hex foreground
          --   bg = '#181818', -- Hex background
          --   ctermfg = 196, -- Terminal foreground
          --   ctermbg = 124, -- Terminal background
          -- },

          -- makes the background and some text colours darker.
          accent_darken = false,

          -- inverts the colour of the status line text.
          invert_status = false,

          -- sets the accent colour using a hash of the current directory
          auto_cwd_color = false,

          -- stops the background colour being set, which will use the terminal default
          no_bg = true,
        }
        vim.cmd.colorscheme 'accent'
      '';
    };
  };
}
