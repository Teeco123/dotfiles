{ ... }:
{
  programs.vesktop = {
    enable = true;
    settings = {
      disableMinSize = true;
      hardwareAcceleration = true;
      hardwareVideoAcceleration = true;
      arRPC = true;
    };
  };
}
