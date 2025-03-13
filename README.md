# <a href="https://github.com/dmarcoux/kotlin_templates">dmarcoux/kotlin_templates</a>

Templates for common files/configs in [Kotlin](https://kotlinlang.org/)
projects.

## How to Use This Template

1. Create a new repository based on this repository:

- Go to this [repository's page](https://github.com/dmarcoux/kotlin_templates),
  click on the `Use this template` button and follow instructions.

  *OR*

- With [GitHub's CLI](https://github.com/cli/cli), run:

  ```bash
  gh repo create NEW_REPOSITORY_NAME --template=dmarcoux/kotlin_templates --clone --private/--public
  ```

2. Adapt this README to the project. This complete section can be deleted.

3. Adapt the devcontainer/Docker development environment based on your project.

## Kotlin Development Environment with devcontainer/Docker

The development environment is based on [devcontainer](https://containers.dev/)
which relies on [Docker](https://www.docker.com/) and
[Docker-Compose](https://docs.docker.com/compose/). devcontainer is [supported
in various IDEs/editors](https://containers.dev/supporting), in addition to
having a [CLI](https://github.com/devcontainers/cli).

## Kotlin Development Environment with Nix Flakes

Reproducible development environment for Kotlin which relies on
[Nix](https://github.com/NixOS/nix) [Flakes](https://nixos.wiki/wiki/Flakes), a
purely functional and cross-platform package manager.

1. Install Nix with the [Determinate Nix Installer](https://github.com/DeterminateSystems/nix-installer).

2. Install [just](https://just.systems/) to easily and simply run
   commands defined in [justfile](justfile). Start with `just` to see what is
   available. If you prefer to not use `just`, the commands from
   [justfile](justfile) document what you can do.

   <details>
     <summary>Installation instructions</summary>

     | Homebrew (MacOS, Linux) | Linux |
     |-------------------------|-------|
     | `brew install just`     | Search for the package `just` in your package manager. |
   </details>
