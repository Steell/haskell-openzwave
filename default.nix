let
  pkgs = import <nixpkgs> {};
in
{
  openzwave ? pkgs.openzwave,
  callCabal2nix ? pkgs.haskellPackages.callCabal2nix,
  callPackage ? pkgs.haskellPackages.callPackage,
  overrideCabal ? pkgs.haskell.lib.overrideCabal
}:

let
  haskell-openzwave = callPackage ./haskell-openzwave {
    inherit haskell-openzwave-gen haskell-openzwave-cpp;
  };
  haskell-openzwave-cpp = callPackage ./haskell-openzwave-cpp {
    inherit overrideCabal haskell-openzwave-gen openzwave;
  };
  haskell-openzwave-gen = callPackage ./haskell-openzwave-gen { };
in
  haskell-openzwave
