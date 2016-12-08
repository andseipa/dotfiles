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
export NOTESDIR=/home/andreas/Dropbox/Notes/
export PRESENDIR=/home/andreas/Dropbox/Presentations/
export DEVDIR=/home/andreas/Dropbox/DEV/
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi


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
alias pstateb="pstate-frequency -S -p balanced"
alias pstatep="pstate-frequency -S -p performance"
alias pstates="pstate-frequency -S -p powersave"
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
alias polyr=/home/andreas/.config/polybar/launch.sh
alias dim='light -S 0.2 & sct 2000'
alias lit='light -S 50 & sct'

# alias iwscan='iw dev wlp58s0 scan | grep -i -A2 signal'
# alias iwlink='iw dev wlp58s0 link'
# alias wpaconn='wpa_supplicant -B -i wlp58s0 -c /home/andreas/.wpa_main.conf & dhcpcd wlp58s0'
# alias nmrestart="systemctl restart NetworkManager"
