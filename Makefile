install: clean
	@mkdir -p ~/.config/kak/colors/
	@ln .Xresources ~/.Xresources
	@ln .config/kak/colors/custom.kak ~/.config/kak/colors/custom.kak
	@ln .config/kak/kakrc ~/.config/kak/kakrc
	@ln .exrc ~/.exrc
	@ln .gitconfig ~/.gitconfig
	@ln .indent.pro ~/.indent.pro
	@ln .kshrc ~/.kshrc
	@ln .lesskey ~/.lesskey
	@ln .profile ~/.profile
	@ln .tmux.conf ~/.tmux.conf

clean:
	@rm -rf \
		~/.Xresources \
		~/.config/kak \
		~/.exrc \
		~/.gitconfig \
		~/.indent.pro \
		~/.kshrc \
		~/.lesskey \
		~/.profile \
		~/.tmux.conf
