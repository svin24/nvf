{
  config.vim = {
    spellcheck = {
      enable = false;
      languages = [
        "en"
        "el"
      ];
    };

    autopairs.nvim-autopairs.enable = true;

    notes.todo-comments = {
      enable = true;
      mappings.telescope = "<leader>st";
    };

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
