install: clean
	@mkdir -p ~/.config/kak/
	@ln .exrc ~/.exrc
	@ln .gitconfig ~/.gitconfig
	@ln .kakrc ~/.config/kak/kakrc
	@ln .kshrc ~/.kshrc
	@ln .lesskey ~/.lesskey
	@ln .profile ~/.profile
	@ln .tmux.conf ~/.tmux.conf

clean:
	@rm -f \
        	~/.exrc \
		~/.gitconfig \
		~/.config/kak/kakrc \
		~/.kshrc \
		~/.lesskey \
		~/.profile \
		~/.tmux.conf
