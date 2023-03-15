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

