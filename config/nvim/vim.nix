{ config, pkgs, ... }:

{

  imports = [
    ./colorscheme.nix
    ./keymaps.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/startify.nix
    ./plugins/oil.nix
    ./plugins/comment.nix
    ./plugins/transparent.nix
    ./plugins/completions.nix
    # ./plugins/treesitter.nix
    ./plugins/telescope.nix
  ];

  programs.nixvim = {

    enable = true;

    # config options for neovim
    opts = {
      # show line numbers
      number = true;

      # show relative numbers
      relativenumber = true;

      # use the system clipboard
      clipboard = "unnamedplus";

      # define tab spaces
      tabstop = 2;
      softtabstop = 2;

      # use spaces instead of tabs
      expandtab = true;

      # enable smart indentation
      smartindent = true;

      # number of spaces to use for each step of (auto)indent
      shiftwidth = 2;

      # highlights the screen lone of the cursor
      cursorline = true;

      # minimum number of screen lines to keep above and below the cursor
      scrolloff = 8;

      # enable 24-bit RGB coolr in the TUI
      termguicolors = true;

    };

    # setting nvim aliases
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };
}
