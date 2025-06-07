{
  pkgs ? (import <nixpkgs> { }),
  unstable ? (import <unstable> { }),
}:
pkgs.mkShellNoCC {
  buildInputs = with pkgs; [
    unstable.typst
    unstable.typstyle
  ];

  shellHook = ''
    export TYPST_FONT_PATHS=$(realpath "$PWD")/assets/fonts
  '';
}
