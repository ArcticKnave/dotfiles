zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors

alias v="nvim"
alias c="clear"
alias ls='ls --color=auto --group-directories-first'

# cmp opts
zstyle ':completion:*' menu select # tab opens cmp menu
zstyle ':completion:*' special-dirs true # force . and .. to show in cmp menu
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;33 # colorize cmp menu
# zstyle ':completion:*' file-list true # more detailed list
# zstyle ':completion:*' squeeze-slashes false # explicit disable to allow /*/ expansion

# main opts
setopt append_history # on exit, history appends rather than overwrites;
setopt inc_append_history #  history is appended as soon as cmds executed
setopt share_history # history shared across sessions
setopt auto_menu menu_complete # autocmp first menu match
setopt autocd # type a dir to cd
setopt auto_param_slash # when a dir is completed, add a / instead of a trailing space
setopt no_case_glob no_case_match # make cmp case insensitive
setopt globdots # include dotfiles
setopt extended_glob # match ~ # ^
# setopt interactive_comments # allow comments in shell
unsetopt prompt_sp # don't autoclean blanklines
# stty stop undef # disable accidental ctrl s

# History options should be set in .zshrc and after oh-my-zsh sourcing.
# See https://github.com/nix-community/home-manager/issues/177.
HISTSIZE="100000"
SAVEHIST="100000"

HISTFILE="~/.zsh_history"
HISTCONTROL=ignoreboth # consecutive duplicates & commands starting with space are not saved

# fzf setup
source <(fzf --zsh) # allow for fzf history widget

if [[ -n $GHOSTTY_RESOURCES_DIR ]]; then
  source "$GHOSTTY_RESOURCES_DIR"/shell-integration/zsh/ghostty-integration
fi

# set up prompt
NEWLINE=$'\n'
# PROMPT="${NEWLINE}%K{#2E3440}%F{#E5E9F0}$(date +%_I:%M%P) %K{#3b4252}%F{#ECEFF4} %n@%m %K{#4c566a} %~ %f%k ❯ " # nord theme
PROMPT="${NEWLINE}%K{#3b4252}%F{#ECEFF4} %n@%m %K{#4c566a} %~ %f%k ❯ " # nord theme
