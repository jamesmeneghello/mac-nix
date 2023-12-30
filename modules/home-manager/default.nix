{ pkgs, nixpkgs, ... }: 
  let
    config = (import ../../config.nix { inherit pkgs; });
  in
{
  # Don't change this when you change package input. Leave it alone.
  home.stateVersion = "22.11";

  # specify my home-manager configs
  home.packages = config.nix_packages;

  home.sessionVariables = {
    PAGER = "less";
    CLICLOLOR = 1;
    EDITOR = "nano";
  };
  programs.bat.enable = true;
  programs.bat.config.theme = "TwoDark";
  programs.fzf.enable = true;
  programs.fzf.enableZshIntegration = true;
  programs.eza.enable = true;
  programs.zsh.enable = true;
  programs.zsh.enableCompletion = true;
  programs.zsh.enableAutosuggestions = true;
  programs.zsh.syntaxHighlighting.enable = true;
  programs.zsh.initExtra = "export GEM_HOME=\"\$HOME/.gem\";\neval \"\$(rbenv init - zsh)\";\n";
  programs.zsh.shellAliases = {
    ls = "ls --color=auto -F";
    nixswitch = "darwin-rebuild switch --flake ~/src/system-config/.#";
    nixup = "pushd ~/src/system-config; nix flake update; nixswitch; popd";
  };
  programs.starship.enable = true;
  programs.starship.enableZshIntegration = true;
  programs.git.enable = true;
  programs.git.userName = config.gitName;
  programs.git.userEmail = config.gitEmail;
  home.file.".inputrc".source = ./dotfiles/inputrc;
  home.file.".gitconfig".source = ./dotfiles/gitconfig;
}
