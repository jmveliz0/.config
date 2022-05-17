set fish_greeting ""
set -gx TERM xterm-256color

# theme
# set -g theme_color_scheme terminal-dark set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname yes
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
alias gpo "git push -u origin \"$(git rev-parse --abbrev-ref HEAD)"\"

command -qv nvim && alias vim nvim

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end


# set z file - this is a global file where all the files you usually
# access will be save there.
set -U Z_DATA "$HOME/.zdata"

# enable vi's mode
fish_vi_key_bindings

# tmux automation
alias rememberit "~/.config/scripts/start-rememberit.sh"
alias ifs "~/.config/scripts/start-ifs.sh"

