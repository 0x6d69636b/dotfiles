export ZSH=~/.zsh
export term=xterm-256color

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

# Load and run compinit
autoload -U compinit
compinit -i

# fix zsh annoying history behavior
#h() { if [ -z "$*" ]; then history 1; else history 1 | egrep "$@"; fi; }

#autoload -Uz up-line-or-beginning-search
#autoload -Uz down-line-or-beginning-search
#zle -N up-line-or-beginning-search
#zle -N down-line-or-beginning-search
#bindkey '\eOA' up-line-or-beginning-search
#bindkey '\e[A' up-line-or-beginning-search
#bindkey '\eOB' down-line-or-beginning-search
#bindkey '\e[B' down-line-or-beginning-search

# Plugins
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Support for powerline
. /usr/share/powerline/zsh/powerline.zsh
source  ~/.powerlevel9k/powerlevel9k.zsh-theme

POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_ETC_ICON=''
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs root_indicator background_jobs history time)
