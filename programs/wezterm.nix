{ ... }:
{
  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;
  };

  home.file.wezterm = {
    source = ./wezterm-config;
    target = ".config/wezterm";
    force = true;
  };
}
