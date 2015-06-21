test:
	shellcheck bin/brew.sh bin/gem.sh bin/npm.sh bin/update.sh
	shellcheck .aliases .bash_profile .custom .functions .theme
	shellcheck bootstrap.sh
