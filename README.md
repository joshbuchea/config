# Config

**Config** is a recipe to get a new Mac running from scratch, setup applications and developer environment. I use this repo to keep track of the important software and steps required to have a functioning system after a fresh install.

You are encouraged to fork this and modify it to your heart's content to match your own needs. **Please be sure to change your `.gitconfig` name and email address!**

## Dev Config

- Install [Xcode](https://itunes.apple.com/app/xcode/id497799835?mt=12) from the App Store
  - Install Command Line Tools: `xcode-select --install`
- Install [Homebrew](http://brew.sh/): `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
  - Install [Homebrew-Cask](https://caskroom.github.io/): `brew tap caskroom/cask`

### Oh My Zsh

- Install: `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
- Plugins (add to `~/.zshrc`): `plugins=(git docker extract z)`

### iTerm2

- Install [iTerm2](https://www.iterm2.com/downloads.html) or `brew cask install iterm2`

### Cobalt2 for iTerm2 and Zsh

- [Download repo archive](https://github.com/wesbos/Cobalt2-iterm/archive/master.zip) and extract
- Drop `cobalt2.zsh-theme` file in to the `~/.oh-my-zsh/themes/` directory.
- Open up your Zsh preferences at `~/.zshrc` and change the theme variable to `ZSH_THEME="cobalt2"`
- [Install PIP](https://pip.pypa.io/en/stable/installing/) with `get-pip.py`:
  - [Download get-pip.py](https://bootstrap.pypa.io/get-pip.py)
  - Install PIP: `sudo python get-pip.py` (Ok to install with OS Python 👍)
- Install Powerline with PIP: `pip install --user powerline-status`
- Install Powerline fonts:
  - `git clone https://github.com/powerline/fonts`
  - `cd fonts`
  - `./install.sh`
- Set fonts in iTerm2:
  - In iTerm2 access the *Profiles* tab in *Preferences*: `iTerm2 > Preferences > Profiles`
  - Create new profile: duplicate *Default* profile and give new profile a name
  - Set new profile as default profile
  - Under the *Colors* tab import the `cobalt2.itermcolors` file via the *Load Presets* drop-down.
  - Under the *Text* tab change the font for each type (*Regular* and *Non-ASCII*) to '**Inconsolata for Powerline**'
  - Under the *Text* tab set font size to `20`
  - Under the *Window* tab change *Columns* to `120` and *Rows* to `18`
- Refresh Zsh by typing `source ~/.zshrc` on the command line.

- https://github.com/wesbos/Cobalt2-iterm

### Hyper.app

- Install [Hyper.app](https://hyper.is/) or `brew cask install hyper`
- Install [hpm-cli](https://www.npmjs.com/package/hpm-cli): `npm install -g hpm-cli`
- Install extensions by adding extension name to `plugins` list in `~/.hyper.js` (extensions live in `~/.hyper_plugins`):
  - [hyperterm-material](https://github.com/dperrera/hyperterm-material): `hpm install hyperterm-material`
  - [hypercwd](https://github.com/hharnisc/hypercwd): `hpm install hypercwd`
  - [hyperpower](https://www.npmjs.com/package/hyperpower): `hpm install hyperpower`
  - [hyper-always-on-top](https://www.npmjs.com/package/hyper-always-on-top): `hpm install hyper-always-on-top`

### RVM

- Install [rvm](https://rvm.io/rvm/install#quick-guided-install) (option #2 - Install RVM stable with ruby)
  - Install [GnuPG](https://www.gnupg.org/) `brew install gnupg gnupg2`
  - Install [GPG keys](https://rvm.io/rvm/install#install-gpg-keys): `gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB`
  - Install [rvm](https://rvm.io/rvm/install#quick-guided-install) stable with ruby: `\curl -sSL https://get.rvm.io | bash -s stable --ruby`

### NVM & Node.js

- Install [nvm](https://github.com/creationix/nvm#user-content-install-script)
- Add nvm export entry to `.zshrc` file:
  ```sh
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
  ```
- Install latest stable version of Node.js: `nvm install stable`

### Package Managers

NPM is installed with Node and Bower's dead baby 💀 Optionally install the package managers below:

- Install [Yarn](https://yarnpkg.com/lang/en/docs/install/#mac-tab) (without Node.js): `brew install yarn --without-node`
- Install [Composer](https://getcomposer.org/doc/00-intro.md#globally): `brew install homebrew/php/composer`

### Task Runners / Build Tools

- Install [Gulp](http://gulpjs.com/): `npm install -g gulp-cli`
- Install [Grunt](http://gruntjs.com/): `npm install -g grunt-cli`

### React Native

- Install [React Native](https://facebook.github.io/react-native/docs/getting-started.html): `npm install -g react-native-cli`
- Install [Create React Native App](https://github.com/react-community/create-react-native-app): `npm install -g create-react-native-app`
- Install [Expo](https://expo.io/): `npm install -g exp`

### Ionic & Cordova

- Install [Ionic](http://ionicframework.com/getting-started/) & [Cordova](https://cordova.apache.org/#getstarted) `npm install -g cordova ionic`

### Jekyll

- Check whether you have Ruby `2.1.0` or higher installed:
    ```sh
    $ ruby --version
    ruby 2.X.X
    ```
- Install Bundler: `gem install bundler`
- Install Jekyll: `gem install jekyll`

## Install Software

The software selected is software that is "tried and true" --- software I need after any fresh install. I often install other software not listed here, but is handled in a case-by-case basis.

### Install with Homebrew

- [ImageMagick](https://www.imagemagick.org/script/): `brew install imagemagick`
- [Wget](https://www.gnu.org/software/wget/): `brew install wget`

### Install from App Store

- [1Password](https://itunes.apple.com/app/1password-password-manager/id443987910?mt=12) (after Dropbox)
- [Amphetamine](https://itunes.apple.com/app/amphetamine/id937984704?mt=12)
- [Fantastical](https://flexibits.com/fantastical) (from [Purchased tab](macappstore://showPurchasesPage))
- [Sip](https://itunes.apple.com/us/app/sip/id507257563?mt=12) (from [Purchased tab](macappstore://showPurchasesPage))
- [Slack](https://itunes.apple.com/app/slack/id803453959?mt=12) or `brew cask install slack`
- [The Unarchiver](https://itunes.apple.com/app/the-unarchiver/id425424353?mt=12) or `brew cask install the-unarchiver`

### Install from Third-Party Websites

- Browsers
  - [Chrome](https://www.google.com/chrome/browser/desktop/) or `brew cask install google-chrome`
  - [Chromium](https://download-chromium.appspot.com/) or `brew cask install chromium`
  - [Firefox](http://firefox.com) or `brew cask install firefox`
  - [Opera](http://www.opera.com/)

- Development
  - [Anvil](http://anvilformac.com/)
  - [Atom](https://atom.io/download/mac) or `brew cask install atom`
  - [Captain](https://getcaptain.co/) or `brew cask install captain`
  - [Docker](https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac) or `brew cask install docker`
  - [ImageOptim](https://imageoptim.com/ImageOptim.tbz2) or `brew cask install imageoptim`
  - [MAMP](https://www.mamp.info/en/downloads/) or `brew cask install mamp`
  - [Postman](https://www.getpostman.com) or `brew cask install postman`
  - [Screaming Frog SEO Spider](https://www.screamingfrog.co.uk/seo-spider/) or `brew cask install screaming-frog-seo-spider`
  - [Sequel Pro](http://www.sequelpro.com/download) or `brew cask install sequel-pro`
  - [SourceTree](https://www.sourcetreeapp.com/download) or `brew cask install sourcetree`
  - [Sublime Text 3](http://www.sublimetext.com/3) or `brew cask install sublime-text`
  - [Unity](https://unity3d.com/get-unity) or `brew cask install unity`
  - [VirtualBox](https://www.virtualbox.org/wiki/Downloads) or `brew cask install virtualbox`
  - [Visual Studio Code](https://code.visualstudio.com/download) or `brew cask install visual-studio-code`

- Utilities
  - [1Clipboard](http://1clipboard.io/) or `brew cask install 1clipboard`
  - [Audacity](http://audacityteam.org/)
  - [Dropbox](https://www.dropbox.com/install2) or `brew cask install dropbox`
  - [FileZilla](https://filezilla-project.org/download.php?type=client) or `brew cask install filezilla`
  - [Franz 4](https://github.com/meetfranz/franz-app-legacy/releases)
  - [GIMP](https://www.gimp.org/downloads/) or `brew cask install gimp`
  - [Google Backup and Sync](https://www.google.com/drive/download/backup-and-sync/) or `brew cask install google-backup-and-sync`
  - [HandBrake](https://handbrake.fr/downloads.php) or `brew cask install handbrake`
  - [Junecloud Automator Actions](http://junecloud.com/software/mac/junecloud-automator-actions.html)
  - [Kap](https://getkap.co/) or `brew cask install kap`
  - [KeepingYouAwake](https://github.com/newmarcel/KeepingYouAwake/releases) or `brew cask install keepingyouawake`
  - [Skype](http://www.skype.com/en/download-skype/skype-for-computer/) or `brew cask install skype`
  - [Spotify](https://www.spotify.com/us/download/mac/) or `brew cask install spotify`
  - [SuperDuper!](http://www.shirt-pocket.com/downloads/SuperDuper!.dmg) or `brew cask install superduper`
  - [Transmission](https://transmissionbt.com/download/) or `brew cask install transmission`
  - [VLC media player](http://www.videolan.org/vlc/download-macosx.html) or `brew cask install vlc`

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
- Show user agent shadow DOM: `DevTools > Settings > Preferences > Elements > Show user agent shadow DOM`
- Disable cache (while DevTools is open): `DevTools > Settings > Preferences > Network > Check Disable cache (while DevTools is open)`

## SourceTree

- Enable Dark Theme: `View > Theme > Dark`

## Visual Studio Code

- Load user settings from: [`settings.json`](/vs-code/settings.json) (`~/Library/Application Support/Code/User/settings.json`)
- Install Extensions:
  - EditorConfig for VS Code
  - [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)

## Atom

### Packages

- atom-beautify
- badass-react-snippets
- file-icons
- git-time-machine
- highlight-selected
- html-head-snippets
- language-babel
- language-javascript-jsx
- linter
- linter-eslint
- linter-jscs
- merge-conflicts
- minimap
- open-recent
- php-debug
- pigments
- prettier-atom
- split-diff
- tab-control
- tabs-to-spaces
- todo-show

### Config

- Snippets (`~/.atom/snippets.cson`): [`snippets.cson`](/atom/snippets.cson)

- Make tabs wider
  You should go to the themes tab in the settings view. Scroll all the way down until you see 'core themes' and the one dark ui theme. It should have a settings button that takes you to the theme's settings.
- Remove page rule guide/line: `Disable the Wrap Guide package` `Settings > Packages > Search "wrap guide" > Disable`
- Recents (Closed Files): `Settings > Packages > Open Recent > List Directories Added to Project`

#### Show closing brace/tag when folding code blocks

Add below code to `~/.atom/config.cson`:

```cson
".basic.html.text":
  editor:
    foldEndPattern: ""
".css.source":
  editor:
    foldEndPattern: ""
".html.php.text":
  editor:
    foldEndPattern: ""
".js.jsx.source":
  editor:
    foldEndPattern: ""
".js.source":
  editor:
    foldEndPattern: ""
```

## Sublime Text

- [Install Package Control](https://packagecontrol.io/installation)
- Install Packages (Command-Shift-P)
  - [Oceanic Next Color Scheme](https://github.com/voronianski/oceanic-next-color-scheme)
  - [GitGutter](https://github.com/jisaacks/GitGutter)
  - [HTML-CSS-JS Prettify](https://github.com/victorporof/Sublime-HTMLPrettify)
  - [Sass](https://packagecontrol.io/packages/Sass)
- Load user settings from [`Preferences.sublime-settings`](/sublime-text/Preferences.sublime-settings)

## BBEdit

### Preferences

- `Appearance > List display font > System Font Regular - 12`
- `Editor Defaults > Soft wrap text to > Page guide`
- `Editor Defaults > Default font > Consolas for BBEdit - 13`
- `Editor Defaults > Tab width > 2`
- `Keyboard > "Home" and "End" key behavior > Move cursor to beginning and end of current line`
- `Keyboard > Allow Tab key to indent text blocks`
