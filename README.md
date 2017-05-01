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
- [dockertoolbox](https://www.docker.com/products/docker-toolbox)
- [flow](http://flowtype.org)
- [git](https://git-scm.com/)
- [gpg](https://help.github.com/categories/gpg/)
- [heroku](https://toolbelt.heroku.com/standalone)
- [highlight](http://www.andre-simon.de/doku/highlight/en/highlight.php)
- [imagemagick](http://www.imagemagick.org/script/index.php)
- [mongodb](https://www.mongodb.org)
- [phantomjs](http://phantomjs.org)
- [postgres](http://www.postgresql.org)
- [redis](http://redis.io)
- [shellcheck](https://github.com/koalaman/shellcheck)
- [virtualbox](https://www.virtualbox.org/)
- [watchman](https://facebook.github.io/watchman)
- [webkit2png](http://www.paulhammond.org/webkit2png/)

```bash
$ brew.sh
```

#### Gem

You can install and update [rbenv](https://github.com/sstephenson/rbenv) and listed dependencies using the following command.

- [bundler](http://bundler.io)
- [cocoapods](https://cocoapods.org)
- [foreman](http://ddollar.github.io/foreman/)
- [jekyll](http://jekyllrb.com)
- [travis](https://github.com/travis-ci/travis.rb)

```bash
$ gem.sh
```

#### NPM

You can install and update [npm](https://www.npmjs.com) listed dependencies using the following command.

- [cloc](https://github.com/AlDanial/cloc)
- [csslint](https://github.com/CSSLint/csslint)
- [doxdox](http://doxdox.org)
- [eslint](http://eslint.org/)
- [firebase-tools](https://www.firebase.com/)
- [greenkeeper](https://greenkeeper.io/)
- [grunt-cli](http://gruntjs.com)
- [jshint](https://www.npmjs.com/package/jshint)
- [jslint](https://www.npmjs.com/package/jslint)
- [mailmake](https://github.com/neogeek/mailmake)
- [mocha](http://mochajs.org)
- [nodemon](https://github.com/remy/nodemon)
- [nsp](https://github.com/nodesecurity/nsp)
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

#### hint

Runs `jshint` on all `.js` files in the current folder.

```bash
$ hint
```

#### lint

Runs `jslint` on all `.js` files in the current folder.

```bash
$ lint
```

#### nodejs-project-builder

Make a new Node.js project using the repo located at <https://github.com/neogeek/nodejs-starter-kit>.

```bash
$ nodejs-project-builder <name>
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
