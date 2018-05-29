{ pkgs
    ? import <nixpkgs> {},
  haskell-openzwave-gen
    ? import ../haskell-openzwave-gen { inherit pkgs; },
  haskell-openzwave-cpp
    ? import ../haskell-openzwave-cpp { inherit pkgs haskell-openzwave-gen; }
}:

pkgs.haskellPackages.callCabal2nix "haskell-openzwave" ./. {
  inherit haskell-openzwave-gen haskell-openzwave-cpp;
}