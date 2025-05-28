{ ... }:
{
  home.file.sketchybar = {
    source = ./services/sketchybar-config;
    target = ".config/sketchybar";
    force = true;
  };
}
