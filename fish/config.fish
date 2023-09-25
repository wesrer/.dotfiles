if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_ssh_agent

# Custom aliases

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

# Created by `pipx` on 2023-05-04 18:49:14
set PATH $PATH /home/sojudrinker/.local/bin

export PATH="$PATH:/home/sojudrinker/.foundry/bin"
set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH
