{ pkgs
    ? import <nixpkgs> {},
  hoppy-generator
    ? pkgs.haskellPackages.hoppy-generator
}:

pkgs.haskellPackages.callCabal2nix "haskell-openzwave-gen" ./. {
  inherit hoppy-generator;
}