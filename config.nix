{ pkgs ? import <nixpkgs> {} }:
rec {
  # Your username here.
  username = "james";

  # Path to your home directory here.
  homeDirectory = "/Users/james";

  # Mac App Store Apps
  mas = {
    # Xcode = 497799835;
  };

  # Homebrew
  taps = [];
  brews = [];
  casks = [ 
    "google-chrome" 
    "rectangle"
  ];
  nix_packages = with pkgs; [
    ripgrep
    git   
    fd    
    curl 
    less
  ];	
}
