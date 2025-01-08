let
  bufferMap = "<leader>b";
in
{
  config.vim = {
    maps.normal = {
      "${bufferMap}d" = {
        action = ":bdel<CR>";
        desc = "Buffer: Kill Current";
      };
      "${bufferMap}-" = {
        action = ":bp<CR>";
        desc = "Buffer: Previous";
      };
      "${bufferMap}=" = {
        action = ":bn<CR>";
        desc = "Buffer: Next";
      };
    };

    telescope.mappings.buffers = "<leader>bb";
  };
}
