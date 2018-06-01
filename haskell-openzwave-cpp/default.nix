{ callCabal2nix, overrideCabal, haskell-openzwave-gen, openzwave }:

let
  pkg = callCabal2nix "haskell-openzwave-cpp" ./. {
    inherit haskell-openzwave-gen;
  };
  # Necessary for binding to openzwave
  overridden = overrideCabal pkg (old: {
    configureFlags = [
      "--extra-lib-dirs=${openzwave}/lib64"
      "--extra-include-dirs=${openzwave}/include/openzwave"
      "--extra-include-dirs=${openzwave}/include/openzwave/value_classes"
    ];
  });
in overridden.overrideAttrs (oldAttrs: {
  # This makes $(openzwave) available in Makefile
  inherit openzwave;
})
