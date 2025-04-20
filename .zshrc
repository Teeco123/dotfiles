# ~/.zshrc

# Function to display Git branch and status
git_branch_name() {
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk -F'/' '{print $NF}')

  if [[ -n "$branch" ]]; then
    # Check for Git changes
    git_changes=$(git status --porcelain 2>/dev/null)

    # Symbols for different statuses
    dirty=""       # Unstaged changes
    staged=""      # Staged changes
    untracked=""

    [[ $(echo "$git_changes" | grep "^.M") ]] && dirty="*"       # unstaged changes
    [[ $(echo "$git_changes" | grep "^A") ]] && staged="+"       # staged changes
    [[ $(echo "$git_changes" | grep "^??") ]] && untracked="#" # untracked files

    # Combine indicators
    git_status_indicator="${dirty}${staged}${untracked}"

    # Display branch with status indicators
    echo " %F{cyan}git:%f%F{red}($branch%F{yellow}$git_status_indicator%F{red})%f"
  fi
}

setopt prompt_subst

# Prompt structure with Git branch and status
prompt='%F{magenta}%1/%f$(git_branch_name) %F{yellow}~%f '
