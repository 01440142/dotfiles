install: 
	@mkdir -p ~/.config/kak/colors/ ~/bin/
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
	@ln bin/,cowsay ~/bin/,cowsay
	@ln bin/,fetch ~/bin/,fetch
	@ln bin/,github ~/bin/,github
	@ln bin/,rsetup ~/bin/,rsetup
	@ln bin/,setup ~/bin/,setup
	@ln bin/,wttr ~/bin/,wttr

clean:
	@rm \
		~/.Xresources \
		~/.config/kak/colors/custom.kak \
		~/.config/kak/kakrc \
		~/.exrc \
		~/.gitconfig \
		~/.indent.pro \
		~/.kshrc \
		~/.lesskey \
		~/.profile \
		~/.tmux.conf \
		~/bin/,cowsay \
		~/bin/,fetch \
		~/bin/,github \
		~/bin/,rsetup \
		~/bin/,setup \
		~/bin/,wttr \
