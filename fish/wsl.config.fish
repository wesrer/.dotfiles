if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_ssh_agent

# Custom aliases

# Reload config from the ln linked file in fish
alias reloadconf="source ~/.config/fish/config.fish"

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

# WSL2 aliases
# Go to your wiki directory
alias cdwiki="cd /mnt/c/Users/takas/Documents/sadboiwiki"

# Setup Astira dev
alias assdev="ssh-add -D && ssh-add ~/.ssh/astriaTM"

# Setup TM dev
alias tmdev="ssh-add -D && ssh-add ~/.ssh/id_sojudrinkerTM"

# Set dev under wes_xyz (giraffe)
alias giraffedev="ssh-add -D && ssh-add ~/.ssh/wes_station"

# Setup dev under my normal repository
alias wesrerdev="ssh-add -D && ssh-add ~/.ssh/wesrer_TM"

# Created by `pipx` on 2023-05-04 18:49:14
set PATH $PATH /home/sojudrinker/.local/bin

export PATH="$PATH:/home/sojudrinker/.foundry/bin"
set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH
