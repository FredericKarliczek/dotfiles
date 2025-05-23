# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="-> \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]\n$ "
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

PATH="$PATH":"$HOME/.local/scripts/"
bind '"\C-f":"tmux-sessionizer\n"'

PATH="$PATH":"$HOME/.cargo/bin/"
