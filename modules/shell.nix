{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    # zsh-vi-mode.enable = true;
    initContent = ''
      eval "$(zoxide init zsh)"
      alias z="cd"
    '';
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    presets = [ "nerd-font-symbols" ];
    settings = {
      add_newline = true;
      line_break.disabled = false;
    };
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.bat = {
    enable = true;
    config.theme = "OneHalfDark";
  };

  programs.tmux = {
    enable = true;
    mouse = true;
    keyMode = "vi";
    historyLimit = 5000;
  };
}
