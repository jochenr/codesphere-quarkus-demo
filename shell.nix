{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [ nixpkgs/0d534853a55b5d02a4ababa1d71921ce8f0aee4c#maven ];
#   buildInputs = [ pkgs.maven ];
}
