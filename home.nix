{ config, pkgs, ... }:

{

  imports = [
    ./config/default.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.username = "wolf";
  home.homeDirectory = "/home/wolf";

  home.stateVersion = "24.05";

  home.packages = with pkgs; [
    nodejs_22
    gh
    tmux
    kitty
    nerdfonts
    fira
    fira-code
    fira-code-symbols
    onefetch
    discord
    ripcord
    vesktop
    dorion
    ripgrep
    tre-command
    btop
    obsidian
    spotify
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.lazygit = {
    enable = true;
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
