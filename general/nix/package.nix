{pkgs}:
stdenvNoCC.mkDerivation {
  pname = "??";
  version = "0.1.0";
  src = ../.;

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
}
