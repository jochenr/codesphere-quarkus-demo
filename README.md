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

Datei "shell.nix" im Proeject Root Verzeichnis mit folgendem Inhalt anlegen:  

```bash
# https://nixos.wiki/wiki/Development_environment_with_nix-shell
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [ pkgs.maven ];
}
```  

NIX Pakete können hier gesucht/gefunden werden:  
 * https://search.nixos.org/packages

Dann  
```bash
nix-shell
```
ausführen.


## create ci-pipeline

Auf Codesphere die CI-Pipeline zusammenklicken bzw. eine Pipeline Datei ci.yml anlegen:  

```yaml
schemaVersion: v0.2
prepare:
  steps:
    - name: NIX Shell init
      command: nix-shell
    - name: Maven Build
      command: nix-shell --run "mvn clean install -DskipTests -DskipITs"
test:
  steps:
    - command: nix-shell --run "mvn clean verify"
run: {}
```




