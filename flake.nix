{
description = "Android Flutter Development";
inputs = {
  nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  flake-utils.url = "github:numtide/flake-utils";
};
outputs = { self, nixpkgs, flake-utils }:
  flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
        inherit system;
        config = {
          android_sdk.accept_license = true;
          allowUnfree = true;
        };
      };
    in
    {
      devShell =
        with pkgs; mkShell rec {
          ANDROID_SDK_ROOT = "${android-tools}/libexec/android-sdk";
          buildInputs = [
			android-tools
            jdk17
			go
			gopls
			gomobile
			libGL 
			pkg-config 
			xorg.libX11.dev 
			xorg.libXcursor 
			xorg.libXi 
			xorg.libXinerama 
			xorg.libXrandr 
			xorg.libXxf86vm
          ];
        };
    });
}
