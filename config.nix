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
  ];
  casks = [ 
    "google-chrome" 
    "rectangle"
    "visual-studio-code"
    "raycast"
  ];
  nix_packages = with pkgs; [
    ripgrep
    fd    
    curl 
    less
    rbenv
  ];	
}
