{ ... }:
{
  imports = [
    ../../services/yabai.nix
    ../../services/sketchybar.nix
    ../../system-defaults/controlCenter.nix
    ../../system-defaults/dock.nix
    ../../system-defaults/finder.nix
    ../../system-defaults/NSGlobalDomain.nix
  ];
  security.pam.services.sudo_local.touchIdAuth = true;
  nixpkgs.hostPlatform = "aarch64-darwin";

  nix = {
    settings = {
      experimental-features = "nix-command flakes";
    };
  };

  users.users.kacper = {
    name = "kacper";
    home = "/Users/kacper";
  };

  system = {
    primaryUser = "kacper";
    stateVersion = 6;
  };
}
