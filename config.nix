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
    "libpq"
    "mkcert"
    "mysql-client"
    "nss"
    "nvm"
    "openssl"
    "yarn"
    "zstd"
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
    curl
    direnv
    docker # Still have to install Docker Desktop
    docker-compose
    fd
    less
    python2
    ruby.devEnv
    git
    sqlite
    libpcap
    postgresql
    libxml2
    libxslt
    pkg-config
    bundix
    foreman
    gnumake
    ripgrep
    zstd
  ];
}
