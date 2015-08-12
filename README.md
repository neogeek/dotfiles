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

#### Directory Traversal

Move up one directory.

```bash
$ ..
```

#### coffeewatch

Watch for changes to `.coffee` files and compile them into the same directory.

```bash
$ coffeewatch
```

#### pyserver

Run a python server with the static files in the current directory. Port defaults to 8000.

```bash
$ pyserver <port>
```

#### sasswatch

Watch for changes to `.scss` files and compile them into the same directory.

```bash
$ sasswatch
```

### Git Aliases

#### Branches

```bash
$ git b
```

#### Logs

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

- [cask](http://caskroom.io)
- [boot2docker](http://boot2docker.io)
- [docker](https://www.docker.com)
- [heroku](https://toolbelt.heroku.com/standalone)
- [flow](http://flowtype.org)
- [imagemagick](http://www.imagemagick.org/script/index.php)
- [iojs](https://iojs.org/en/index.html)
- [mongodb](https://www.mongodb.org)
- [phantomjs](http://phantomjs.org)
- [redis](http://redis.io)
- [shellcheck](https://github.com/koalaman/shellcheck)
- [watchman](https://facebook.github.io/watchman)
- [webkit2png](http://www.paulhammond.org/webkit2png/)

```bash
$ brew.sh
```

#### Gem

You can install and update [rbenv](https://github.com/sstephenson/rbenv) and listed dependencies using the following command.

- [bundler](http://bundler.io)
- [cocoapods](https://cocoapods.org)
- [jekyll](http://jekyllrb.com)
- [travis](https://github.com/travis-ci/travis.rb)

```bash
$ gem.sh
```

#### NPM

You can install and update [npm](https://www.npmjs.com) listed dependencies using the following command.

- [babel](https://babeljs.io)
- [bower](http://bower.io)
- [coffee-script](http://coffeescript.org)
- [csslint](https://github.com/CSSLint/csslint)
- [doxdox](http://doxdox.org)
- [electron-prebuilt](https://github.com/mafintosh/electron-prebuilt)
- [grunt-cli](http://gruntjs.com)
- [jshint](https://www.npmjs.com/package/jshint)
- [jslint](https://www.npmjs.com/package/jslint)
- [mailmake](https://github.com/neogeek/mailmake)
- [mocha](http://mochajs.org)
- [nodemon](https://github.com/remy/nodemon)
- [react-native-cli](http://facebook.github.io/react-native)
- [react-tools](http://facebook.github.io/react)

```bash
$ npm.sh
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
