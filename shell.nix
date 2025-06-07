{
  pkgs ? (import <nixpkgs> { }),
  unstable ? (import <unstable> { }),
}:
pkgs.mkShellNoCC {
  buildInputs = with pkgs; [
    unstable.typst
    unstable.typstyle
  ];
}
