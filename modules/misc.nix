{
  config.vim = {
    spellcheck = {
      enable = false;
      languages = [
        "en"
        "es"
      ];
    };

    autopairs.nvim-autopairs.enable = true;

    comments.comment-nvim = {
      enable = true;
      mappings =
        let
          s = "<leader>\/\/"; # [single] SPC / /
          m = "<leader>\/\."; # [multi]  SPC / .
        in
        {
          # single
          toggleCurrentLine = s;
          toggleOpLeaderLine = s;
          toggleSelectedLine = s;
          # multi
          toggleCurrentBlock = m;
          toggleOpLeaderBlock = m;
          toggleSelectedBlock = m;
        };
    };
  };
}
