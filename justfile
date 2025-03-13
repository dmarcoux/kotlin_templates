# Documentation: https://github.com/casey/just

# Default recipe when `just` is called without any argument
[doc("List all just recipes in the order they appear in the justfile")]
default:
  just --list --unsorted

[doc("Start the development environment based on Nix Flakes")]
dev:
  @# With `$SHELL`, it uses your default shell
  nix develop --command $SHELL

[doc("Open the project in your IDE, by default IntelliJ IDEA")]
code ide="idea":
  @# With `nohup`, your IDE process continues to live even if the development environment gets killed
  @# `&` puts the process in the background to not block the shell
  nohup {{ide}} ./ &
  @# The shell seems to be stuck after the execution of the previous command with `nohup`. Pressing `Enter` shows the
  @# shell prompt back, but we don't need to do anything anyway, so we can simply get the shell prompt back with `exit`
  @exit

[doc("Start the Spring Boot application with its dependent services from Docker Compose")]
run:
  ./gradlew bootRun

[doc("Run tests")]
test:
  ./gradlew test
