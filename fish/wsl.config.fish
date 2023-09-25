if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_ssh_agent

# Custom aliases

# Reload config from the ln linked file in fish
alias reloadconf="source ~/.config/fish/config.fish"

# View current conf
alias viewconf="bat ~/.config/fish/config.fish"

# Size of current dir in human readable format
alias dirsize="du -sh"

# Run tokei to find out lines of code in the current dir
alias codelines="tokei ."

# Remove ssh keys currently active
alias rmkeys="ssh-add -D"

# Format toml files with taplo (useful for astria)
alias fmt-toml="taplo format"

# Format rust files with +nightly
alias fmt-rust="cargo +nightly fmt"

# Reset author of last commit in git
alias git-reauthor="git commit --amend --reset-author"

# Amend your last commit
alias git-re="git commit --amend"

# WSL2 aliases
# Go to your wiki directory
alias cdwiki="cd /mnt/c/Users/takas/Documents/sadboiwiki"

# Setup Astira dev
alias assdev="git config user.name "dereksione" && git config user.email "derek@astria.org" && ssh-add -D && ssh-add ~/.ssh/astriaTM"

# Setup TM dev
alias tmdev="git config user.name "soju-drinker" && git config user.email "takashi.hatake@outlook.com" && ssh-add -D && ssh-add ~/.ssh/id_sojudrinkerTM"

# Set dev under wes_xyz (giraffe)
alias giraffedev="git config user.name "wes_xyz" && git config user.email "wesrer@skiff.com" && ssh-add -D && ssh-add ~/.ssh/wes_stationewesrer_TM"

# Setup dev under my normal repository
alias wesrerdev="git config user.name "wesrer" && git config user.email "sayakchatterjee1309@gmail.com" && ssh-add -D && ssh-add ~/.ssh/wesrer_TM"

# Created by `pipx` on 2023-05-04 18:49:14
set PATH $PATH /home/sojudrinker/.local/bin

export PATH="$PATH:/home/sojudrinker/.foundry/bin"
set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH
