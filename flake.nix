{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      nix-darwin,
      home-manager,
    }:
    {
      darwinConfigurations."Kacpers-MacBook-Pro" = nix-darwin.lib.darwinSystem {
        modules = [
          ./hosts/macbook/configuration.nix
          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.verbose = true;
            home-manager.backupFileExtension = "bac";
            home-manager.users.kacper = ./hosts/macbook/home.nix;
          }
        ];
      };

      devShells.aarch64-darwin.default =
        let
          pkgs = import nixpkgs { system = "aarch64-darwin"; };
        in
        pkgs.mkShell {
          buildInputs = with pkgs; [
            stylua
            lua-language-server
            nixfmt-rfc-style
            nil
            bash-language-server
            shfmt
          ];
        };
    };
}
