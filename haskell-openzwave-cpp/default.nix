{ pkgs
    ? import <nixpkgs> {},
  haskell-openzwave-gen
    ? import ../haskell-openzwave-gen { inherit pkgs; },
  openzwave
    ? pkgs.openzwave
}:

let
  pkg = pkgs.haskellPackages.callCabal2nix "haskell-openzwave-cpp" ./. {
    inherit haskell-openzwave-gen; # openzwave;
  };
  # Necessary for binding to openzwave
  overridden = pkgs.haskell.lib.overrideCabal pkg (old: {
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