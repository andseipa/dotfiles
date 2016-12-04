#!/bin/bash
if [ ! -e "$HOME/.tmux.conf" ]; then
	ln -s $HOME/.dotfiles/tmux.conf $HOME/.tmux.conf
fi
if [ ! -e "$HOME/.zshrc" ]; then
	ln -s $HOME/.dotfiles/zshrc $HOME/.zshrc
fi
if [ ! -e "$HOME/.vimperator/colors/gruvbox.vimp" ]; then
	ln -s $HOME/.dotfiles/vimperator/colors/gruvbox.vimp $HOME/.vimperator/colors/gruvbox.vimp
fi
if [ ! -e "$HOME/.vimperatorrc" ]; then
	ln -s $HOME/.dotfiles/vimperatorrc $HOME/.vimperatorrc
fi
if [ ! -e "$HOME/.xinitrc" ]; then
	ln -s $HOME/.dotfiles/xinitrc $HOME/.xinitrc
fi
if [ ! -e "$HOME/.Xresources" ]; then
	ln -s $HOME/.dotfiles/Xresources $HOME/.Xresources
fi
if [ ! -e "$HOME/.config/hangups" ]; then
	ln -s $HOME/.dotfiles/hangups $HOME/.config/hangups
fi
if [ ! -e "$HOME/.config/i3" ]; then
	ln -s $HOME/.dotfiles/i3 $HOME/.config/i3
fi
if [ ! -e "$HOME/.config/libinput-gestures.conf" ]; then
	ln -s $HOME/.dotfiles/libinput-gestures.conf $HOME/.config/libinput-gestures.conf
fi
if [ ! -e "$HOME/.config/mpd/mpd.conf" ]; then
	ln -s $HOME/.dotfiles/mpd/mpd.conf $HOME/.config/mpd/mpd.conf
fi
if [ ! -e "$HOME/.config/ncmpcpp" ]; then
	ln -s $HOME/.dotfiles/ncmpcpp $HOME/.config/ncmpcpp
fi
if [ ! -e "$HOME/.config/nvim" ]; then
	ln -s $HOME/.dotfiles/nvim $HOME/.config/nvim
fi
if [ ! -e "$HOME/.config/termite" ]; then
	ln -s $HOME/.dotfiles/termite $HOME/.config/termite
fi
if [ ! -e "$HOME/.config/zathura" ]; then
	ln -s $HOME/.dotfiles/zathura $HOME/.config/zathura
fi
if [ ! -e "$HOME/.config/cava" ]; then
	ln -s $HOME/.dotfiles/cava $HOME/.config/cava
fi
if [ ! -e "$HOME/.config/compton.conf" ]; then
	ln -s $HOME/.dotfiles/compton.conf $HOME/.config/compton.conf
fi
if [ ! -e "$HOME/.config/gtk-3.0" ]; then
	ln -s $HOME/.dotfiles/gtk-3.0 $HOME/.config/gtk-3.0
fi
if [ ! -e "$HOME/.config/nitrogen" ]; then
	ln -s $HOME/.dotfiles/nitrogen $HOME/.config/nitrogen
fi
if [ ! -e "$HOME/.config/polybar" ]; then
	ln -s $HOME/.dotfiles/polybar $HOME/.config/polybar
fi
