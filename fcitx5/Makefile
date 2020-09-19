install-all:
	pacman -S fcitx5-anthy fcitx5-chewing fcitx5-chinese-addons-git fcitx5-config-tool-git fcitx5-git fcitx5-gtk-git fcitx5-material-color fcitx5-pinyin-moegirl fcitx5-pinyin-zhwiki fcitx5-qt4-git fcitx5-qt5-git
	mv ~/.config/fcitx5 ~/.config/fcitx5-bak
	git clone https://github.com/chitang233/dot-files /tmp/chitang/
	cp -r /tmp/chitang/fcitx5/* ~/.config/fcitx5/

install-fcitx5:
	pacman -S fcitx5-anthy fcitx5-chewing fcitx5-chinese-addons-git fcitx5-config-tool-git fcitx5-git fcitx5-gtk-git fcitx5-material-color fcitx5-pinyin-moegirl fcitx5-pinyin-zhwiki fcitx5-qt4-git fcitx5-qt5-git

install-config:
	mv ~/.config/fcitx5 ~/.config/fcitx5-bak
	git clone https://github.com/chitang233/dot-files /tmp/chitang/
	cp -r /tmp/chitang/fcitx5/* ~/.config/fcitx5/

clean:
	rm -rf /tmp/chitang

uninstall-all:
	rm -rf ~/.config/fcitx5
	mv ~/.config/fcitx5-bak ~/.config/fcitx5
	pacman -Rsn fcitx5-git fcitx5-gtk-git fcitx5-anthy fcitx5-chewing fcitx5-chinese-addons-git fcitx5-config-tool-git fcitx5-material-color fcitx5-pinyin-moegirl fcitx5-pinyin-zhwiki fcitx5-qt4-git fcitx5-qt5-git

uninstall-config:
	rm -rf ~/.config/fcitx5
	mv ~/.config/fcitx5-bak ~/.config/fcitx5

uninstall-fcitx5:
	pacman -Rsn fcitx5-git fcitx5-gtk-git fcitx5-anthy fcitx5-chewing fcitx5-chinese-addons-git fcitx5-config-tool-git fcitx5-material-color fcitx5-pinyin-moegirl fcitx5-pinyin-zhwiki fcitx5-qt4-git fcitx5-qt5-git

