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
    "nvm" # Node 16 is deprecated, once moved beyond could use nix
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
    bundix
    curl
    direnv
    docker # Still have to install Docker Desktop
    docker-compose
    fd
    foreman
    git
    gnumake
    less
    libpcap
    libxml2
    libxslt
    nodenv
    pkg-config
    postgresql
    python2
    ripgrep
    ruby.devEnv
    sqlite
    yarn2nix
    zstd
  ];
}
