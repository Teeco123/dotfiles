{ pkgs, ... }:
{
  imports = [
    ../../services/skhd.nix
    ../../programs/zsh.nix
    ../../programs/git.nix
    ../../programs/nvim.nix
    ../../programs/wezterm.nix
    ../../programs/yazi.nix
    ../../home-other.nix
  ];

  programs.home-manager.enable = true;
  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    eza
    tree-sitter
    nodejs-slim_24
  ];
}
