{ pkgs
    ? import <nixpkgs> {},
  haskell-openzwave-gen
    ? import ../haskell-openzwave-gen { inherit pkgs; },
  openzwave
    ? pkgs.openzwave
}:

let
  # TODO(steell): Should we override hoppy-runtime at the top-level?
  hoppy-runtime = pkgs.haskellPackages.callPackage (
    pkgs.fetchFromGitLab {
      owner = "masahirosakai";
      repo = "hoppy";
      rev = "a57b3558909643345e44fb5248251d0670e7bf7f";
      sha256 = "0bygjjj57nlp9hn39c7m58fr06sq0xaalqjlmywp21mdd32kcwqn";
    } + /runtime) {};
  pkg = pkgs.haskellPackages.callCabal2nix "haskell-openzwave-cpp" ./. {
    inherit hoppy-runtime haskell-openzwave-gen; # openzwave;
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