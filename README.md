# Config

**Config** is a recipe to get a new Mac running from scratch, setup applications and developer environment. I use this repo to keep track of the important software and steps required to have a functioning system after a fresh install.

You are encouraged to fork this and modify it to your heart's content to match your own needs. **Please be sure to change your `.gitconfig` name and email address!**

## Dev Config

* Install [Xcode](https://itunes.apple.com/app/xcode/id497799835?mt=12) from the App Store
* Install [Homebrew](http://brew.sh/) (ruby command line command install method) `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
* Install [rvm](https://rvm.io/rvm/install#quick-guided-install) (option #2 - Install RVM stable with ruby)
  * Install [GnuPG](https://www.gnupg.org/) `brew install gnupg gnupg2`
  * Install [rvm](https://rvm.io/rvm/install#quick-guided-install) stable with ruby: `\curl -sSL https://get.rvm.io | bash -s stable --ruby`
* Install [nvm](https://github.com/creationix/nvm#user-content-install-script)

* Install [React Native](https://facebook.github.io/react-native/docs/getting-started.html)
* [React Native Playground CLI](https://github.com/rnplay/rnplay-cli) `npm install -g rnplay-cli`

* Install [Ionic](http://ionicframework.com/getting-started/) & [Cordova](https://cordova.apache.org/#getstarted) `npm install -g cordova ionic`
* Install [Composer](https://getcomposer.org/doc/00-intro.md#globally)

## Install Software

The software selected is software that is "tried and true" --- software I need after any fresh install. I often install other software not listed here, but is handled in a case-by-case basis.

### Install from App Store

* [1Password](https://itunes.apple.com/app/1password-password-manager/id443987910?mt=12)
* [Caffeine](https://itunes.apple.com/app/caffeine/id411246225?mt=12)
* [Fantastical](https://itunes.apple.com/app/fantastical-2-calendar-reminders/id975937182?mt=12)
* [Sip](https://itunes.apple.com/us/app/sip/id507257563?mt=12)
* [Slack](https://itunes.apple.com/app/slack/id803453959?mt=12)
* [The Unarchiver](https://itunes.apple.com/app/the-unarchiver/id425424353?mt=12)

### Install from Third-Party Websites

* Browsers
  * [Chrome](https://www.google.com/chrome/browser/desktop/)
  * [Firefox](http://firefox.com)
  * [Opera](http://www.opera.com/)

* Development
  * [Anvil](http://anvilformac.com/)
  * [Atom](https://atom.io/download/mac)
  * [ImageOptim](https://imageoptim.com/ImageOptim.tbz2)
  * [MAMP](https://www.mamp.info/en/downloads/)
  * [Postman](https://www.getpostman.com)
  * [Sequel Pro](http://www.sequelpro.com/download)
  * [SourceTree](https://www.sourcetreeapp.com/download)
  * [Sublime Text 3](http://www.sublimetext.com/3)
  * [Unity](https://unity3d.com/get-unity)

* Utilities
  * [Audacity](http://audacityteam.org/)
  * [Dropbox](https://www.dropbox.com/install2)
  * [FileZilla](https://filezilla-project.org/download.php?type=client)
  * [Skype](http://www.skype.com/en/download-skype/skype-for-computer/)
  * [Spotify](https://www.spotify.com/us/download/mac/)
  * [SuperDuper!](http://www.shirt-pocket.com/downloads/SuperDuper!.dmg)
  * [VLC media player](http://www.videolan.org/vlc/download-macosx.html)
  * [XtraFinder](https://www.trankynam.com/xtrafinder/)

## OS X Preferences

```bash

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles YES

# Show the ~/Library folder in Finder
chflags nohidden ~/Library

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Store screenshots in subfolder in Dropbox
mkdir ~/Dropbox/Screenshots
defaults write com.apple.screencapture location ~/Dropbox/Screenshots

# Delete Recent Items for VLC (will fail if no recent items):
defaults delete org.videolan.vlc.LSSharedFileList RecentDocuments

# Disable listing recent items for VLC in the future:
defaults write org.videolan.vlc NSRecentDocumentsLimit 0
defaults write org.videolan.vlc.LSSharedFileList RecentDocuments -dict-add MaxAmount 0
```

## Sublime Text

* [Install Package Control](https://packagecontrol.io/installation)
* Install Packages (Command-Shift-P)
  * [Oceanic Next Color Scheme](https://github.com/voronianski/oceanic-next-color-scheme)
  * [GitGutter](https://github.com/jisaacks/GitGutter)
  * [HTML-CSS-JS Prettify](https://github.com/victorporof/Sublime-HTMLPrettify)
  * [Sass](https://packagecontrol.io/packages/Sass)
* Load user settings from [`Preferences.sublime-settings`](/Preferences.sublime-settings)

## BBEdit

### Preferences

`Preferences > Appearance > List display font > System Font Regular - 12`

`Preferences > Editor Defaults > Soft wrap text to > Page guide`

`Preferences > Editor Defaults > Default font > Consolas for BBEdit - 13`

`Preferences > Editor Defaults > Tab width > 2`

`Preferences > Keyboard > "Home" and "End" key behavior > Move cursor to beginning and end of current line`

`Preferences > Keyboard > Allow Tab key to indent text blocks`
