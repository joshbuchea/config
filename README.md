# Config

**Config** is a recipe to get a new Mac running from scratch, setup applications and developer environment. I use this repo to keep track of the important software and steps required to have a functioning system after a fresh install.

You are encouraged to fork this and modify it to your heart's content to match your own needs. **Please be sure to change your `.gitconfig` name and email address!**

## Dev Config

* Install [Xcode](https://itunes.apple.com/app/xcode/id497799835?mt=12) from the App Store
* Install [Homebrew](http://brew.sh/): `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### Oh My Zsh

* Install: `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
* Plugins (add to `~/.zshrc`): `plugins=(git docker extract z)`

### Hyper.app

* Install [Hyper.app](https://hyper.is/)
* Install extensions by adding extension name to `plugins` list in `~/.hyper.js` (extensions live in `~/.hyper_plugins`):
  * [hypercwd](https://github.com/hharnisc/hypercwd): `npm install --save`
  * [hyperterm-material](https://github.com/dperrera/hyperterm-material)

### RVM

* Install [rvm](https://rvm.io/rvm/install#quick-guided-install) (option #2 - Install RVM stable with ruby)
  * Install [GnuPG](https://www.gnupg.org/) `brew install gnupg gnupg2`
  * Install [rvm](https://rvm.io/rvm/install#quick-guided-install) stable with ruby: `\curl -sSL https://get.rvm.io | bash -s stable --ruby`

### NVM

* Install [nvm](https://github.com/creationix/nvm#user-content-install-script)
* Add nvm export entry to `.zshrc` file:

```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
```

### Other Package Managers

* Install [Bower](https://bower.io/): `npm install -g bower`
* Install [Composer](https://getcomposer.org/doc/00-intro.md#globally)

## Task Runners / Build Tools

* Install [Gulp](http://gulpjs.com/): `npm install -g gulp-cli`
* Install [Grunt](http://gruntjs.com/): `npm install -g grunt-cli`

### React Native

* Install [React Native](https://facebook.github.io/react-native/docs/getting-started.html): `npm install -g react-native-cli`
* Install [React Native Playground CLI](https://github.com/rnplay/rnplay-cli) `npm install -g rnplay-cli`

### Ionic/Cordova

* Install [Ionic](http://ionicframework.com/getting-started/) & [Cordova](https://cordova.apache.org/#getstarted) `npm install -g cordova ionic`

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
  * [Chromium](https://download-chromium.appspot.com/) or `brew cask install chromium`
  * [Firefox](http://firefox.com)
  * [Opera](http://www.opera.com/)

* Development
  * [Anvil](http://anvilformac.com/)
  * [Atom](https://atom.io/download/mac)
  * [Docker](https://docs.docker.com/docker-for-mac/)
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
  * [f.lux](https://justgetflux.com/)
  * [FileZilla](https://filezilla-project.org/download.php?type=client)
  * [Franz](http://meetfranz.com/#download)
  * [GIMP](https://www.gimp.org/downloads/)
  * [Skype](http://www.skype.com/en/download-skype/skype-for-computer/)
  * [Spotify](https://www.spotify.com/us/download/mac/)
  * [SuperDuper!](http://www.shirt-pocket.com/downloads/SuperDuper!.dmg)
  * [VLC media player](http://www.videolan.org/vlc/download-macosx.html)
  * [XtraFinder](https://www.trankynam.com/xtrafinder/)

## OS X Preferences

```bash

###############################################################################
# Screen                                                                      #
###############################################################################

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

###############################################################################
# Finder                                                                      #
###############################################################################

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles YES

# Show the ~/Library folder in Finder
chflags nohidden ~/Library

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Show/hide icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

###############################################################################
# Dock, Dashboard, and hot corners                                            #
###############################################################################

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

###############################################################################
# Misc                                                                        #
###############################################################################

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Store screenshots in subfolder in Dropbox
mkdir ~/Dropbox/Screenshots
defaults write com.apple.screencapture location ~/Dropbox/Screenshots

# Delete Recent Items for VLC (will fail if no recent items):
defaults delete org.videolan.vlc.LSSharedFileList RecentDocuments

# Disable listing recent items for VLC in the future:
defaults write org.videolan.vlc NSRecentDocumentsLimit 0
defaults write org.videolan.vlc.LSSharedFileList RecentDocuments -dict-add MaxAmount 0

# Chrome: Disable swipe navigation
defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool FALSE
```

## Dropbox

- `Preferences > Network > Bandwidth: Change Settings... > Upload rate > Don't limit`

## Chrome

### DevTools

- Enable Dark Theme: `DevTools > Settings > Preferences > Appearance > Theme > Select Dark`
- Disable cache: `DevTools > Settings > Preferences > Network > Check Disable cache (while DevTools is open)`

## Atom

* Install packages
  * atom-beautify
  * badass-react-snippets
  * file-icons
  * git-time-machine
  * highlight-selected
  * html-head-snippets
  * language-babel
  * language-javascript-jsx
  * linter
  * linter-eslint
  * merge-conflicts
  * minimap
  * open-recent
  * php-debug
  * pigments
  * tab-control
  * tabs-to-spaces
  * todo-show
* Atom Config
  * Make tabs wider
    You should go to the themes tab in the settings view. Scroll all the way down until you see 'core themes' and the one dark ui theme. It should have a settings button that takes you to the theme's settings.
  * Remove page rule guide/line: `Disable the Wrap Guide package` `Settings > Packages > Search "wrap guide" > Disable`
  * Recents (Closed Files): `Settings > Packages > Open Recent > List Directories Added to Project`
  * Two-line code folding - Add below code to `config.cson`:

    ```
    ".css.source":
      editor:
        foldEndPattern: ""
    ".js.jsx.source":
      editor:
        foldEndPattern: ""
    ".js.source":
      editor:
        foldEndPattern: ""
    ".php.source":
      editor:
        foldEndPattern: ""
    ".text.html.basic":
      editor:
        foldEndPattern: ""
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

- `Appearance > List display font > System Font Regular - 12`
- `Editor Defaults > Soft wrap text to > Page guide`
- `Editor Defaults > Default font > Consolas for BBEdit - 13`
- `Editor Defaults > Tab width > 2`
- `Keyboard > "Home" and "End" key behavior > Move cursor to beginning and end of current line`
- `Keyboard > Allow Tab key to indent text blocks`
