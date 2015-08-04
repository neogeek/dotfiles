test:
	shellcheck bin/brew.sh bin/gem.sh bin/npm.sh bin/update.sh
	shellcheck .aliases .bash_profile .functions .gitsetup .theme
	shellcheck bootstrap.sh
