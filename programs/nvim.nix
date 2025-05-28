{ ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  home.file.neovim = {
    source = ./nvim-config;
    target = ".config/nvim";
    force = true;
  };
}
