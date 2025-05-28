{ ... }:
{
  programs.zsh = {
    enable = true;
    initContent = ''
            git_branch_name() {
              branch=$(git symbolic-ref HEAD 2> /dev/null | awk -F'/' '{print $NF}')

              if [[ -n "$branch" ]]; then
                git_changes=$(git status --porcelain 2>/dev/null)

                dirty=""
                staged=""
                untracked=""

                [[ $(echo "$git_changes" | grep "^.M") ]] && dirty="*"
                [[ $(echo "$git_changes" | grep "^A") ]] && staged="+"
                [[ $(echo "$git_changes" | grep "^??") ]] && untracked="#"

                git_status_indicator="''${dirty}''${staged}''${untracked}"
                echo " %F{cyan}git:%f%F{red}($branch%F{yellow}''${git_status_indicator}%F{red})%f"
              fi
            }

            setopt prompt_subst


      			if [[ -n $IN_NIX_SHELL ]]; then
            	prompt='%F{cyan}󱄅 %f %F{magenta}%1/%f$(git_branch_name) %F{yellow}~%f '
      			else
            	prompt='%F{magenta}%1/%f$(git_branch_name) %F{yellow}~%f '
      			fi
    '';
    shellAliases = {
      nix-rebuild = "sudo darwin-rebuild switch --flake ~/.nix-config";
      ls = "eza -a --icons";
      cfg = "cd ~/.nix-config && nix-develop";
      nix-develop = "nix develop -c $SHELL";
    };
    autosuggestion = {
      enable = true;
      highlight = "fg=13";
    };
    syntaxHighlighting = {
      enable = true;
    };
  };
}
