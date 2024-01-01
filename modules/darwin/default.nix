{ pkgs, ... }: 
let
  config = (import ../../config.nix { inherit pkgs; } );
in
{
  # here go the darwin preferences and config items
  users.users.${config.username} = {
    name = "${config.username}";
    home = "${config.homeDirectory}";
  };	  
  programs.zsh.enable = true;
  environment = {
    shells = with pkgs; [ bash zsh ];
    loginShell = pkgs.zsh;
    systemPackages = [ pkgs.coreutils ];
    systemPath = [ "/opt/homebrew/bin" ];
    pathsToLink = [ "/Applications" ];
  };
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';
  fonts.fontDir.enable = true; # DANGER
  fonts.fonts = [ (pkgs.nerdfonts.override { fonts = [ "Meslo" ]; }) ];
  services.nix-daemon.enable = true;
  # services.postgresql.enable = true; # We're using a docker container for the server atm
  system.defaults = {
    finder.AppleShowAllExtensions = true;
    finder._FXShowPosixPathInTitle = true;
    NSGlobalDomain.AppleShowAllExtensions = true;
  };

  # backwards compat; don't change
  system.stateVersion = 4;
  homebrew = {
    enable = true;
    caskArgs.no_quarantine = true;
    global.brewfile = true;
    masApps = config.mas;
    casks = config.casks;
    taps = config.taps;
    brews = config.brews;
  };
}
