# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/andreas/.oh-my-zsh
export EDITOR=nvim
export VISUAL=nvim
export TERM=xterm-256color
export NOTESDIR=/home/andreas/Dropbox/Notes/
export PRESENDIR=/home/andreas/Dropbox/Presentations/
export DEVDIR=/home/andreas/Dropbox/DEV/
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GDK_SCALE=2
# export GDK_DPI_SCALE=0.5

xrdb ~/.Xresources

source "/home/andreas/.vim/plugged/gruvbox/gruvbox_256palette.sh"

ZSH_THEME="odin"
# ZSH_THEME="pure"

# DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="false"

# COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd/mm.yyyy"

plugins=()

source $ZSH/oh-my-zsh.sh


export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

alias sudo="sudo "
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias config="/usr/bin/git --git-dir=/home/andreas/.cfg --work-tree=/home/andreas"
alias ls="ls --color=auto"
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias pstateb="pstate-frequency -S -p balanced"
alias pstatep="pstate-frequency -S -p performance"
alias pstates="pstate-frequency -S -p powersave"
alias cpup="cpupower frequency-info"
alias mpdkill="mpd --kill"
alias tmuxkill="tmux kill-server"
alias vim="nvim" 
alias zathura="zathura --fork"
alias nmrestart="systemctl restart NetworkManager"
alias tmux="tmux -2"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
