{
  config.vim = {
    options =
      let
        indentWidth = 2;
      in
      {
        autoindent = true;
        shiftwidth = indentWidth;
        tabstop = indentWidth;

        # backup & swap
        backup = false;
        writebackup = false;
        swapfile = true;
        
        # mouse
        mouse = "nv";
        mousemodel = "extend";
      };

    clipboard = {
      enable = true;
      registers = "unnamedplus";
    };

    undoFile.enable=true;
  };
}
