test:
	shellcheck bin/brew.sh bin/cask.sh bin/gem.sh bin/gpg.sh bin/install.sh bin/npm.sh bin/osx.sh bin/update.sh
	shellcheck bin/fixbrew.sh bin/fixgpg.sh bin/fixssh.sh
	shellcheck .aliases .bash_profile .functions .gitsetup bootstrap.sh
