let
  pkgs = import <nixpkgs> {};
in

with pkgs;
openzwave.overrideAttrs (oldAttrs: {
  src=fetchFromGitHub {
    owner = "Steell";
    repo = "open-zwave";
    rev = "fbcd7455b2403b422094c1d597f331375ee2fa56";
    sha256 = "0zzihd4ggh8l5hqql0g74mf0y7ndrmnvn5iv7mxhlzlcvg01zdl0";
  };
})