{ ... }: {
  programs.git = {
    enable = true;
    userName = "Kacper Gajko";
    userEmail = "kacper.gajko1@icloud.com";
    ignores = [ ".DS_Store" ];
    aliases = {
      cam = "commit -a -m";
      st = "status";
      p = "push";
    };
    extraConfig = {
      init.defaultBranch = "main";
      push.autoSetupRemote = true;
    };
  };
}
