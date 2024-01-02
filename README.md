# Nix Flake Setup

## Preparation

- Install Nix
- Install XCode-Tools
- Install Docker Desktop (womp)

## Usage

Clone the repo. `git clone git@github.com:dirkkelly/mac-nix.git ~/src/mac-nix`

Modify options in `config.nix` as required, including adding any new packages.

Search for `dirkkelly` and update and instances of it

Replace `modules/home-manager/dotfiles/gitconfig` definition of `signingkey`

To apply run `nixswitch` which presumes the folder location specified above.

nixswitch is an alias for:

`nix --extra-experimental-features nix-command --extra-experimental-features flakes run nix-darwin -- switch --flake ~/src/mac-nix#mbp-dev`

Use Raycast to find applications instead of spotlight, this will ensure UI apps installed via nix are executable (eg: Slack, VSCode)

