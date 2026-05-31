{ config, pkgs, ... }:

{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";
  home.stateVersion = "26.05";

  imports = [
    ./modules/editor.nix
    ./modules/git.nix
    ./modules/shell.nix
  ];
  home.packages = with pkgs; [
    fzf
    devenv
  ];

  programs.home-manager.enable = true;
}

