# dotfiles

> @neogeek's dotfiles

![](http://i.imgur.com/Ght2rMp.png)

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

### Aliases

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

### Scripts

#### Brew

You can install and update brew and listed dependencies using the following command.

- [heroku](https://toolbelt.heroku.com/standalone)
- [mongodb](https://www.mongodb.org)
- [node](https://nodejs.org)
- [phantomjs](http://phantomjs.org)
- [redis](http://redis.io)
- [webkit2png](http://www.paulhammond.org/webkit2png/)

```bash
$ brew.sh
```

#### NPM

You can install and update npm listed dependencies using the following command.

- [bower](http://bower.io)
- [coffee-script](http://coffeescript.org)
- [csslint](https://github.com/CSSLint/csslint)
- [doxdox](http://doxdox.org)
- [electron-prebuilt](https://github.com/mafintosh/electron-prebuilt)
- [grunt-cli](http://gruntjs.com)
- [jslint](https://www.npmjs.com/package/jslint)
- [mailmake](https://github.com/neogeek/mailmake)
- [mocha](http://mochajs.org)
- [nodemon](https://github.com/remy/nodemon)

```bash
$ npm.sh
```

### Functions

#### makealias

Make an alias to a file. Will only make the alias if supplied file exists.

```bash
$ makealias <alias> <file>
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
