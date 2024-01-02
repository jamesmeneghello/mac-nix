{ pkgs ? import <nixpkgs> {} }:
rec {
  # Your username here.
  username = "james";

  gitName = "James Meneghello";
  gitEmail = "james.meneghello@gmail.com";

  # Path to your home directory here.
  homeDirectory = "/Users/james";

  # Mac App Store Apps
  mas = {
    # Xcode = 497799835;
  };

  # Homebrew
  taps = [];
  brews = [
    "gh"
    "rbenv"
    "ruby-build"
    "libpq"
  ];
  casks = [ 
    "1password"
    "google-chrome" 
    "iterm2"
    "rectangle"
    "visual-studio-code"
    "raycast"
  ];
  nix_packages = with pkgs; [
    ripgrep
    fd    
    curl 
    less
    slack
  ];	
}
