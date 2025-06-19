{ pkgs, mac-app-util, ... }:
{
  imports = [
    ../../programs/zsh.nix
    ../../services/skhd.nix
    ../../programs/git.nix
    ../../programs/nvim.nix
    ../../programs/wezterm.nix
    ../../programs/yazi.nix
    ../../programs/vesktop.nix
    mac-app-util.homeManagerModules.default
  ];

  programs.home-manager.enable = true;
  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    eza
    tree-sitter
    nodejs-slim_24
  ];

  home.file = {
    ".config/sketchybar" = {
      source = ../../dotfiles/sketchybar;
      target = ".config/sketchybar";
      force = true;
    };
    ".config/skhd" = {
      source = ../../dotfiles/skhd;
      target = ".config/skhd";
      force = true;
    };
    ".config/yabai" = {
      source = ../../dotfiles/yabai;
      target = ".config/yabai";
      force = true;
    };
    ".config/wezterm" = {
      source = ../../dotfiles/wezterm;
      target = ".config/wezterm";
      force = true;
    };
    ".config/nvim" = {
      source = ../../dotfiles/nvim;
      target = ".config/nvim";
      force = true;
    };
    ".config/git" = {
      source = ../../dotfiles/git;
      target = ".config/git";
      force = true;
    };
  };
}
