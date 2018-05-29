{ pkgs
    ? import <nixpkgs> {}
}:

pkgs.haskellPackages.callCabal2nix "haskell-openzwave-gen" ./. {}