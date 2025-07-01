{
  config.vim = {
    languages = {
      enableExtraDiagnostics = true;
      enableFormat = true;
    };

    lsp = {
      enable = true;
      formatOnSave = false;
      lspconfig.enable = true;
      null-ls.enable = true;
      nvim-docs-view.enable = false; # this is broken

      mappings =
        let
          prefix = "<leader>c";
          mkKey = k: "${prefix}${k}";
        in
        {
          codeAction = mkKey "a";
          format = mkKey "f";
          goToDeclaration = mkKey "gD";
          goToDefinition = mkKey "gd";
          goToType = mkKey "gt";
          renameSymbol = mkKey "r";

          hover = null; # K
          nextDiagnostic = null; # ]d
          previousDiagnostic = null; # [d
          addWorkspaceFolder = null;
          documentHighlight = null;
          listDocumentSymbols = null;
          listImplementations = null;
          listReferences = null;
          listWorkspaceFolders = null;
          listWorkspaceSymbols = null;
          openDiagnosticFloat = null;
          removeWorkspaceFolder = null;
          signatureHelp = null;
          toggleFormatOnSave = null;
        };
    };

    telescope.mappings = {
      lspDocumentSymbols = "<leader>csb";
      lspWorkspaceSymbols = "<leader>csw";
      lspReferences = "<leader>cR";
      lspImplementations = "<leader>ci";
      lspDefinitions = "<leader>cd";
      lspTypeDefinitions = "<leader>ct";
      diagnostics = "<leader>cd";
    };
  };
}
