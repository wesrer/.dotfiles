# --------------------------------------------------------
# Navigation management
# --------------------------------------------------------
alias el="eza -la"
alias e="eza"
alias c="clear"

# --------------------------------------------------------
# Dotfiles management
# --------------------------------------------------------

alias editfishconfig="nvim ~/Code/.dotfiles/fish/osx.config.fish"
alias editviconfig="nvim ~/Code/.dotfiles/nvim/bullpen.init.vim"

alias cdconfig="cd ~/Code/.dotfiles/"
alias cdbull="cd ~/Code/Bullpen"
alias cdrsbull="cd ~/Code/Bullpen/data-pipeline"
alias reload="source ~/.config/fish/config.fish"
alias cr="clear && reload"

alias cdwiki="cd ~/Documents/sadboiwiki"

# --------------------------------------------------------
# Personal dev setup
# --------------------------------------------------------

alias derek="ssh-add ~/.ssh/dereksione_gh"
alias wes="ssh-add ~/.ssh/wesrer_gh"
alias timestamp="date +%s"

alias bulldev="derek && cd ~/Code/Bullpen"

alias update="brew update & brew upgrade"

# --------------------------------------------------------
# Rust specific commands
# --------------------------------------------------------

alias carb="cargo build"
alias carr="cargo run"
alias cart="cargo test"
alias cartt="cart --test"
alias card="cargo doc --document-private-items"

# --------------------------------------------------------
# Python specific commands
# --------------------------------------------------------

alias pyn="pip install"
alias pyr="python3"
alias pyenv="python3 -m venv"

# --------------------------------------------------------
# Git specific commands
# --------------------------------------------------------

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gca="git commit --amend"
alias gaa="git add ."
alias gp="git push"
alias gpf="git push -f"
alias gpl="git pull"
alias gfa="git fetch --all"
alias gl="git log":L:w
alias gsubup="git submodule update --recursive --remote"

# Combinations

alias gcf="gaa && gca && gpf"

# --------------------------------------------------------
# Taskwarrior specific
# --------------------------------------------------------

alias t="task"

# Project specific commands

alias tbull="task project:bullpen"
alias tbulla="task add project:bullpen"
alias tbullx="task project:bullpen complete"
alias tbullm="task modify project:bullpen"
alias tbh="tbull prio:H"

alias thab="task project:habits"
alias thaba="task project:habits add"
alias thabx="task project:habits complete"
alias thabm="task modify project:habits"

alias tch="task project:chores"
alias tcha="task project:chores add"
alias tchx="task project:chores complete"
alias tchm="task modify project:chores"

# Priority

alias tph="task prio:H"
alias tphm="task modify prio:H"

# --------------------------------------------------------
# Timewarrior specific
# --------------------------------------------------------

alias tis="timew summary :ids"

# --------------------------------------------------------
# Postgresql specific commands
# --------------------------------------------------------

alias pgstart="brew services start postgresql@16"
alias pgstop="brew services stop postgresql@16"
alias ldb="brew services"

# local database for bullpen development
alias ldbull="pgcli -d test_data_pipeline"
# Remote staging database for bullpen development
# alias rdbull="pgcli -h "



# Created by `pipx` on 2024-07-22 19:43:58
set PATH $PATH /Users/dereksione/.local/bin
