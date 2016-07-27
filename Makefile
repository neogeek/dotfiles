test:
	shellcheck bin/brew.sh bin/gem.sh bin/gpg.sh bin/install.sh bin/npm.sh bin/osx.sh bin/update.sh
	shellcheck .aliases .bash_profile .functions .gitsetup .gpgsetup .npmsetup .theme
	shellcheck bootstrap.sh
