#!/usr/bin/env bash
dir=`pwd`


# tmux
echo "$(tput setaf 1)Installing tmux...$(tput sgr0)"
rm -rf ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -sf ${dir}/.tmux.conf ${HOME}/.tmux.conf
echo "$(tput setaf 1)tmux installed. REMEMBER TO MANUALLY PRESS <PREFIX> + I TO INSTALL TPM PLUGINS.$(tput sgr0)"

# Fish
echo "$(tput setaf 1)Installing Fish...$(tput sgr0)"
brew install fish
sudo -s 'echo /usr/local/bin/fish >> /etc/shells'
chsh -s /usr/local/bin/fish
ln -sf ${dir}/config.fish ${HOME}/.config/fish/config.fish
echo "$(tput setaf 1)Fish installed.$(tput sgr0)"
