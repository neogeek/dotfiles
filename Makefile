test:
	shellcheck bin/brew.sh bin/gem.sh bin/install.sh bin/npm.sh bin/osx.sh bin/update.sh
	shellcheck .aliases .bash_profile .functions .gitsetup .theme
	shellcheck bootstrap.sh
