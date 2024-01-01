# Nix Flake Setup

## Preparation

- Install Nix
- Install XCode-Tools

## Usage

Clone the repo.

Modify options in `config.nix` as required, including adding any new packages.

To apply: 

```bash
> nix run nix-darwin -- switch --flake .#mbp-dev
```

## Python

Currently using pyenv, to get support for 2

```bash
pyenv install 2.7.18
pyenv global 2.7.18
```