# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export GOPATH=$HOME/go

export PATH=$HOME/bin:/usr/local/bin/:/usr/bin:/usr/sbin:/bin:$GOPATH/bin
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/awscli@1/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/brentonmcsweyn/.oh-my-zsh"

export SqlServerName=localhost
export SqlUsername=SubscriptionUser
export SqlPassword="p@ssw0rd"
export SqlDatabase=Subscriptions
export GOOGLE_APPLICATION_CREDENTIALS="/Users/brentonmcsweyn/source/firestore.json"
export ASPNETCORE_ENVIRONMENT="Production"


# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="muse"
ZSH_THEME="powerlevel10k/powerlevel10k"

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias cat='bat'


DISABLE_UPDATE_PROMPT=true

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/zsh-custom/custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git common-aliases colored-man-pages colorize github docker brew osx npm kubectl zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


if [  ]; then source <(kubectl completion zsh); fi

source ~/.functions
source ~/.aliases

export EDITOR='nano'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
