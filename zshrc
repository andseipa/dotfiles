# ========================================
#	.zshrc
#
#				by Andreas Seipajarvi
# ========================================


# ========================================
#	Enviroment variables
# ========================================

export PATH=$HOME/.gem/ruby/2.3.0/bin:$HOME/bin:/usr/local/bin:$PATH
export ZSH=/home/andreas/.oh-my-zsh
export EDITOR=nvim
export VISUAL=nvim
export TERM=xterm-256color
export LANG=en_US.UTF-8
export MANPATH="/usr/local/man:$MANPATH"
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Directories
export DROPBOX=/home/andreas/Dropbox/
export NOTESDIR=/home/andreas/Dropbox/Notes/
export PRESENDIR=${DROPBOX}Presentations
export DEVDIR=${DROPBOX}DEV
export MUSIC=${DROPBOX}Music

# HiDPI vars
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export ELM_SCALE=1.5

# ========================================
#	ZSH init
# ========================================

ZSH_THEME="geometry"

ENABLE_CORRECTION="false"
HIST_STAMPS="dd/mm.yyyy"

plugins=()


# ========================================
#	Source scripts
# ========================================

source "/home/andreas/.vim/plugged/gruvbox/gruvbox_256palette.sh"
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# ======================================== 
#	Alias
# ======================================== 

# list
alias ls="ls --color=auto"
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

# power management
alias pstateb="sudo pstate-frequency -S -p balanced"
alias pstatep="sudo pstate-frequency -S -p performance"
alias pstates="sudo pstate-frequency -S -p powersave"
alias cpup="cpupower frequency-info"

# headphone
alias headloud="amixer -c 0 cset numid=10 0%"
alias headquiet="amixer -c 0 cset numid=10 22%"

# tmux
alias tmux="tmux -2"
alias t="tmux"
alias tls="tmux ls"
alias tnew="tmux new -s"
alias ta="tmux a"
alias tat="tmux a -t"
alias tkill="tmux kill-session -t"

# misc
alias vpn="openvpn --config /etc/openvpn/Sweden.conf --daemon"
alias vpnkill="pkill openvpn"
alias mkill="mpd --kill"
alias vim="nvim" 
alias zathura="zathura --fork"
alias sudo="sudo "
alias dim='light -S 0.2 & sct 2000'
alias lit='light -S 50 & sct'
alias pdfclean='mv $(find $NOTESDIR -iname \*.pdf) ~/Documents/pdf'
alias tetherbt="dbus-send --system --type=method_call --dest=org.bluez /org/bluez/hci0/dev_44_78_3E_29_10_33 org.bluez.Network1.Connect string:'nap'"
alias tetherdh="dhcpd bnep0"
