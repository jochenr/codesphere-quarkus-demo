# quarkus-codesphere-demo

This project uses Quarkus, the Supersonic Subatomic Java Framework.

If you want to learn more about Quarkus, please visit its website: <https://quarkus.io/>.

## Project Setup using Maven

```bash
mvn io.quarkus.platform:quarkus-maven-plugin:3.15.4:create \
    -DprojectGroupId=de.jochenr.demo.codesphere.quarkus \
    -DprojectArtifactId=quarkus-codesphere-demo
```

## create  project-specific environment  

Datei "shell.nix" mit folgendem Inhalt anlegen:  

```bash
# https://nixos.wiki/wiki/Development_environment_with_nix-shell
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [ nixpkgs/0d534853a55b5d02a4ababa1d71921ce8f0aee4c#maven ];
#   buildInputs = [ pkgs.maven ];
}
```  

NIX Pakete können hier gesucht/gefunden werden:  
 * https://search.nixos.org/packages






