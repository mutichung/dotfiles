{ pkgs, ... }:

{
  home.packages = with pkgs; [
    cargo
    gcc
    gnumake
    luarocks
    neovim
    unzip
  ];

	xdg.configFile."nvim".source = pkgs.fetchFromGitHub {
	  owner = "LazyVim";
    repo = "starter";
    rev = "main";
    sha256 = "sha256-QrpnlDD4r1X4C8PqBhQ+S3ar5C+qDrU1Jm/lPqyMIFM=";
  };
}
