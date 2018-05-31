{ pkgs ? import <nixpkgs> {},
  haskell-openzwave-gen ? null,
  openzwave ? pkgs.openzwave
}:

let
  hoppy = pkgs.fetchFromGitLab {
    owner = "masahirosakai";
    repo = "hoppy";
    rev = "a57b3558909643345e44fb5248251d0670e7bf7f";
    sha256 = "0bygjjj57nlp9hn39c7m58fr06sq0xaalqjlmywp21mdd32kcwqn";
  };
  # TODO(steell): Should we override hoppy-runtime at the top-level?
  hoppy-runtime = pkgs.haskellPackages.callPackage (hoppy + /runtime) {};
  hoppy-generator = pkgs.haskellPackages.callPackage (hoppy + /generator) {};
  genPkg =
    if haskell-openzwave-gen == null then
      import ../haskell-openzwave-gen { inherit pkgs hoppy-generator; }
    else
      haskell-openzwave-gen;
  pkg = pkgs.haskellPackages.callCabal2nix "haskell-openzwave-cpp" ./. {
    inherit hoppy-runtime openzwave;
    haskell-openzwave-gen = genPkg;
  };
in
  # Necessary for binding to openzwave
  pkgs.haskell.lib.overrideCabal pkg (old: {
    enableSharedExecutables = false;
    configureFlags = [
      # "--extra-lib-dirs=${openzwave}/lib64"
      "--extra-include-dirs=${openzwave}/include/openzwave"
      "--extra-include-dirs=${openzwave}/include/openzwave/value_classes"
    ];
  })
