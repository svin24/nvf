{
  config.vim = {
    useSystemClipboard = true;

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
        swapfile = false;
      };
  };
}
