install-all:
	#install zsh
	pacman -S zsh #install zsh
	chsh -s /bin/zsh #change default terminal to zsh
	#install zsh frameworks
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" #Install ohmyzsh
	wget -nv -O - https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh #Install zimfw
	#install powerlevel10k
	git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ~/.config/powerlevel10k
	echo 'source ~/.config/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
	git clone https://github.com/chitang233/dot-files /tmp/chitang/
	mv ~/.zshrc ~/.zshrc.bak
	mv ~/.zimrc ~/.zimrc.bak
	mv ~/.p10k.zsh ~/.p10k.zsh.bak
	cp /tmp/chitang/zsh/zshrc ~/.zshrc
	cp /tmp/chitang/zsh/zimrc ~/.zimrc
	cp /tmp/chitang/zsh/p10k.zsh ~/.p10k.zsh
	cp -r /tmp/chitang/zsh/* ~/.config/zsh/
	rm ~/.config/zsh/zimrc ~/.config/zsh/zshrc ~/.config/zsh/p10k.zsh
	echo "Success"

install-zsh:
	#install zsh
	pacman -S zsh #install zsh
	chsh -s /bin/zsh #change default terminal to zsh
	#install zsh frameworks
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" #Install ohmyzsh
	wget -nv -O - https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh #Install zimfw
	#install powerlevel10k
	git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ~/.config/powerlevel10k
	echo 'source ~/.config/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

install-config:
	git clone https://github.com/chitang233/dot-files /tmp/chitang/
	mv ~/.zshrc ~/.zshrc.bak
	mv ~/.zimrc ~/.zimrc.bak
	mv ~/.p10k.zsh ~/.p10k.zsh.bak
	cp /tmp/chitang/zsh/zshrc ~/.zshrc
	cp /tmp/chitang/zsh/zimrc ~/.zimrc
	cp /tmp/chitang/zsh/p10k.zsh ~/.p10k.zsh
	cp -r /tmp/chitang/zsh/* ~/.config/zsh/
	rm ~/.config/zsh/zimrc ~/.config/zsh/zshrc ~/.config/zsh/p10k.zsh
	echo "Success"

clean:
	rm -rf /tmp/chitang
	pacman -Scc

uninstall-all:
	pacman -R zsh
	rm ~/.zshrc ~/.zimrc ~/.p10k.zsh
	mv ~/.zshrc.bak ~/.zshrc
	mv ~/.zimrc.bak ~/.zimrc
	mv ~/.p10k.zsh.bak ~/.p10k.zsh
	rm -rf ~/.config/zsh
	rm -rf ~/.config/powerlevel10k
	rm -rf ~/.oh-my-zsh
	rm -rf ~/.zim
	
uninstall-zsh:
	pacman -R zsh
	rm -rf ~/.oh-my-zsh
	rm -rf ~/.zim
	
uninstall-config:
	rm ~/.zshrc ~/.zimrc ~/.p10k.zsh
	mv ~/.zshrc.bak ~/.zshrc
	mv ~/.zimrc.bak ~/.zimrc
	mv ~/.p10k.zsh.bak ~/.p10k.zsh
	
