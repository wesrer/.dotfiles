alias el="eza -la"
alias e="eza"
alias c="clear"
alias cr="clear && reload"
alias reload="source ~/.config/fish/config.fish"
alias tis="timew summary :ids"
alias editconfig="vim ~/Code/.dotfiles/fish/osx.config.fish"
alias cdconfig="cd ~/Code/.dotfiles/"
alias derek="ssh-add ~/.ssh/dereksione_gh"
alias wes="ssh-add ~/.ssh/wesrer_gh"
alias carb="cargo build"
alias carr="cargo run"
alias cart="cargo test"
alias update="brew update & brew upgrade"

# Git specific commands
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gca="git commit --amend"
alias gaa="git add ."
alias gp="git push"
alias gpf="git push -f"
alias gpl="git pull"
alias gfa="git fetch --all"
alias gl="git log"

# Combinations
alias gcf="gaa && gca && gpf"

# Bullpen specific commands
alias tbull="task project:bullpen"
alias tbulla="task add project:bullpen"
alias tbullx="task project:bullpen complete"
alias thab="task project:habits"
alias thaba="task project:habits add"
alias thabx="task project:habits complete"
alias tch="task project:chores"
alias tcha="task project:chores add"
alias tchx="task project:chores complete"
