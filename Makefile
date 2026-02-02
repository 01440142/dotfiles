install: clean
	@ln .exrc ~/.exrc
	@ln .gitconfig ~/.gitconfig
	@ln .kshrc ~/.kshrc
	@ln .lesskey ~/.lesskey
	@ln .profile ~/.profile
	@ln .tmux.conf ~/.tmux.conf

clean:
	@rm -f ~/.exrc ~/.gitconfig ~/.kshrc ~/.lesskey ~/.profile ~/.tmux.conf
