{
  description = "??";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
        stdenvNoCC = pkgs.stdenvNoCC;
      in {
        packages.default = stdenvNoCC.mkDerivation {
          pname = "??";
          version = "0.1.0";
          src = ./.;

          nativeBuildInputs = with pkgs; [
          ];

          buildPhase = ''
            runHook preBuild
            ??
            runHook postBuild
          '';

          installPhase = ''
            runHook preInstall
            mkdir -p "$out"
            cp ?? "$out/??"
            runHook postInstall
          '';
        };

        formatter = pkgs.alejandra;
      }
    );
}
