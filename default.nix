let
  pkgs = import <nixpkgs> {};
in
{
  openzwave ? pkgs.openzwave,
  callCabal2nix ? pkgs.haskellPackages.callCabal2nix,
  haskell ? pkgs.haskell
}:

with haskell.lib;
let
  haskell-openzwave = import ./haskell-openzwave {
    inherit callCabal2nix haskell-openzwave-gen haskell-openzwave-cpp;
  };
  haskell-openzwave-cpp = import ./haskell-openzwave-cpp {
    inherit callCabal2nix overrideCabal haskell-openzwave-gen openzwave;
  };
  haskell-openzwave-gen = import ./haskell-openzwave-gen {
    inherit callCabal2nix;
  };
in
  haskell-openzwave
