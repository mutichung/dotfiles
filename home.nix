{ config, pkgs, ... }:

{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";
  home.stateVersion = "26.05";
  home.packages = with pkgs; [
    bat
    cargo
    fzf
    gcc
    git
    gnumake
    luarocks
    neovim
    tmux
    unzip
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
      add_newline = true;
      line_break.disabled = false;
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

	xdg.configFile."nvim".source = pkgs.fetchFromGitHub {
	  owner = "LazyVim";
    repo = "starter";
    rev = "main";
    sha256 = "sha256-QrpnlDD4r1X4C8PqBhQ+S3ar5C+qDrU1Jm/lPqyMIFM=";
  };

}

