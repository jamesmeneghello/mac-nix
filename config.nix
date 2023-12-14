{ pkgs ? import <nixpkgs> {} }:
rec {
  # Your username here.
  username = "dirkkelly";

  gitName = "Dirk Kelly";
  gitEmail = "dk@dirkkelly.com";

  # Path to your home directory here.
  homeDirectory = "/Users/dirkkelly";

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
  ];	
}
