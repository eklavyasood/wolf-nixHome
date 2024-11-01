{
  programs.nixvim = {
    globals.mapleader = " ";

    keymaps = [
    {
      mode = "n";
      key = "-";
      action = ":Oil<CR>";
      options = {
        desc = "Open parent directory";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>tp";
      action = ":TransparentToggle<CR>";
      options = {
        desc = "Toggle Transparency";
      };
    }
    ];
  };
}
