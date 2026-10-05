{
  description = "navidrome-music-player development environment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

  outputs = { self, nixpkgs }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux; in {
      # Tools for rift VMs; see rift://nix-guide.
      fixed-labs.rift.x86_64-linux = {
        packages = with pkgs; [
          nodejs_22
          yarn
          git
        ];
      };
    };
}
