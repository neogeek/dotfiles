[![Build Status](https://travis-ci.org/neogeek/dotfiles.svg?branch=master)](https://travis-ci.org/neogeek/dotfiles)

# dotfiles

> @neogeek's dotfiles

![](screenshot.png)

## Installation

You can store this repo in any directory you choose (I keep it with the rest of my git related projects in `~/git/github/`). Running the following command will pull the latest version of the dotfiles repo into a new folder and add a line to your `~/.bash_profile`.

```bash
$ git clone https://github.com/neogeek/dotfiles.git && cd dotfiles && source bootstrap.sh
```

## Updating

You can update the dotfiles at any time using the following command. It will pull any new updates from the repo and update the line in `~/.bash_profile` to the latest.

```bash
$ update.sh
```

## Commands

### CLI Aliases

#### Directory Listing

Show contents of current directory as a list with color.

```bash
$ ls
```

#### Directory Traversal

Move up one directory.

```bash
$ ..
```

#### Simple HTTP Server

Run a python server with the static files in the current directory. Port defaults to 8000.

```bash
$ pyserver <port>
```

#### Sass Watch

Watch for changes to `.scss` files and compile them into the same directory.

```bash
$ sasswatch
```

#### Code Highlight

Take the current contents of the clipboard and run it through a syntax highlighter.

```bash
$ codehighlight
```

#### Delete node_modules/ and reinstall packages

```bash
$ npmplease
```

### Git Aliases

#### Branches

```bash
$ git b
```

#### Branches (including remote)

```bash
$ git bb
```

#### Logs (with graph)

```bash
$ git l
```

#### Remotes

```bash
$ git r
```

### Scripts

#### Brew

You can install and update [brew](http://brew.sh) and listed dependencies using the following command.

- [asciinema](https://asciinema.org)
- [cask](http://caskroom.io)
- [git](https://git-scm.com/)
- [git-lfs](https://git-lfs.github.com/)
- [gpg](https://help.github.com/categories/gpg/)
- [heroku](https://toolbelt.heroku.com/standalone)
- [highlight](http://www.andre-simon.de/doku/highlight/en/highlight.php)
- [imagemagick](http://www.imagemagick.org/script/index.php)
- [mongodb](https://www.mongodb.org)
- [phantomjs](http://phantomjs.org)
- [postgres](http://www.postgresql.org)
- [redis](http://redis.io)
- [shellcheck](https://github.com/koalaman/shellcheck)
- [watchman](https://facebook.github.io/watchman)
- [webkit2png](http://www.paulhammond.org/webkit2png/)

```bash
$ brew.sh
```

#### Cask

- [alfred](https://www.alfredapp.com/)
- [dash](https://kapeli.com/dash)
- [dropbox](https://www.dropbox.com/)
- [fontbase](http://fontba.se/)
- [github-desktop](https://desktop.github.com/)
- [google-chrome](https://www.google.com/chrome/)
- [iterm2](https://www.iterm2.com/)
- [postgres](https://postgresapp.com/)
- [postico](https://eggerapps.at/postico/)
- [sketch](https://www.sketchapp.com/)
- [spotify](https://www.spotify.com/us/)
- [steam](http://store.steampowered.com/)
- [virtualbox](https://www.virtualbox.org/)
- [visual-studio-code](https://code.visualstudio.com/)

```bash
$ cask.sh
```

#### Gem

You can install and update [rbenv](https://github.com/sstephenson/rbenv) and listed dependencies using the following command.

- [bundler](http://bundler.io)
- [foreman](http://ddollar.github.io/foreman/)
- [jekyll](http://jekyllrb.com)
- [sass](http://sass-lang.com)

```bash
$ gem.sh
```

#### NPM

You can install and update [npm](https://www.npmjs.com) listed dependencies using the following command.

- [doxdox](http://doxdox.org)
- [eslint](http://eslint.org/)
- [firebase-tools](https://www.firebase.com/)
- [mailmake](https://github.com/neogeek/mailmake)
- [mocha](http://mochajs.org)
- [nodemon](https://github.com/remy/nodemon)
- [npm-check-updates](https://github.com/tjunnone/npm-check-updates)
- [pm2](https://github.com/Unitech/pm2)
- [react-native-cli](http://facebook.github.io/react-native)
- [react-tools](http://facebook.github.io/react)
- [spire-of-babel](https://github.com/neogeek/spire-of-babel)
- [svgo](https://github.com/svg/svgo)
- [yarn](https://github.com/yarnpkg/yarn)

```bash
$ npm.sh
```

#### OS X

You can set common default OS X preferences with the following command.

```bash
$ osx.sh
```

### Functions

#### create-nodejs-starter-kit

Make a new Node.js project using the repo located at <https://github.com/neogeek/nodejs-starter-kit>.

```bash
$ create-nodejs-starter-kit <name>
```

#### create-reactjs-starter-kit

Make a new React.js project using the repo located at <https://github.com/neogeek/reactjs-starter-kit>.

```bash
$ create-reactjs-starter-kit <name>
```

#### rebuildspotlight

Rebuild Spotlight index

```bash
$ rebuildspotlight
```

#### rhash

Generate a random hash using `shasum -a 256`.

```bash
$ rhash
```

#### Setup Unity Project with .gitignore

Initializes a new git project with a Unity specific [.gitignore](https://raw.githubusercontent.com/github/gitignore/master/Unity.gitignore)

```bash
$ setupunity
```
