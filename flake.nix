{
  description = "Kotlin development environment";

  inputs = {
    # Use https://www.nixhub.io/ to easily find the exact commit to use in order to pin an input (and its packages) to a specific version
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... } @ inputs:
    # With this, the development environment supports multiple architectures and operating systems: "x86_64-linux", "aarch64-linux", "x86_64-darwin", and "aarch64-darwin"
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };

        # Eclipse Temurin OpenJDK
        java = pkgs.temurin-bin;
      in
      {
        # Create development shell
        devShells.default = pkgs.mkShell {
          name = "devShell-Kotlin";

          # Packages installed in the development environment
          packages = with pkgs; [
            java
          ];

          # Commands to be executed in the development environment
          shellHook = ''
            # Ensure .java-version contains the Java version installed in this development shell
            echo "$(java --version | head -n 1 | cut --delimiter=" " --fields=2)" | xargs -I % echo "temurin-%"  > .java-version

            # Ensure Gradle runs with the Java version installed in this development shell
            export ORG_GRADLE_JAVA_HOME=${java}
          '';
        };
      }
    );
}
