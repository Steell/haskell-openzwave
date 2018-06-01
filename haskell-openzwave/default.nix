{ callCabal2nix, haskell-openzwave-gen, haskell-openzwave-cpp }:
callCabal2nix "haskell-openzwave" ./. {
  inherit haskell-openzwave-gen haskell-openzwave-cpp;
}
