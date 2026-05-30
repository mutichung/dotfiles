{ config, pkgs, ... }:

{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";
  home.stateVersion = "26.05";
  home.packages = with pkgs; [
    bat
    fzf
    git
    neovim
    tmux
    zoxide
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    initContent = ''
      eval "$(zoxide init zsh)"
    '';
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = false;
      line_break.disabled = true;
    };
  };

  programs.git = {
    enable = true;
    settings = {
      user.name = "Mu-Ti Chung";
      user.email = "mtchung037@gmail.com";
      init.defaultBranch = "main";
    };
  };

  programs.home-manager.enable = true;
}

