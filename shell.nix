{
  pkgs ? import <nixpkgs> {},
  openzwave ? import ./openzwave+centralscene.nix,
  ghc ? pkgs.ghc
}:

with pkgs;
haskell.lib.buildStackProject {
  name = "haskell-openzwave";
  inherit ghc openzwave;
  buildInputs = [ openzwave ];
  extraArgs = [
    "--extra-lib-dirs=${openzwave}/lib64"
    "--extra-include-dirs=${openzwave}/include/openzwave"
    "--extra-include-dirs=${openzwave}/include/openzwave/value_classes"
  ];
}