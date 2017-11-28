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

### Hyper.app

- Install [Hyper.app](https://hyper.is/)
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

### Ionic & Cordova

- Install [Ionic](http://ionicframework.com/getting-started/) & [Cordova](https://cordova.apache.org/#getstarted) `npm install -g cordova ionic`

## Install Software

The software selected is software that is "tried and true" --- software I need after any fresh install. I often install other software not listed here, but is handled in a case-by-case basis.

### Install with Homebrew

- [ImageMagick](https://www.imagemagick.org/script/): `brew install imagemagick`
- [Wget](https://www.gnu.org/software/wget/): `brew install wget`

### Install from App Store

- [1Password](https://itunes.apple.com/app/1password-password-manager/id443987910?mt=12) (after Dropbox)
- [Amphetamine](https://itunes.apple.com/app/amphetamine/id937984704?mt=12)
- [Fantastical](https://flexibits.com/fantastical) (from Purchased tab)
- [Sip](https://itunes.apple.com/us/app/sip/id507257563?mt=12)
- [Slack](https://itunes.apple.com/app/slack/id803453959?mt=12)
- [The Unarchiver](https://itunes.apple.com/app/the-unarchiver/id425424353?mt=12)

### Install from Third-Party Websites

- Browsers
  - [Chrome](https://www.google.com/chrome/browser/desktop/) or `brew cask install google-chrome`
  - [Chromium](https://download-chromium.appspot.com/) or `brew cask install chromium`
  - [Firefox](http://firefox.com) or `brew cask install firefox`
  - [Opera](http://www.opera.com/)

- Development
  - [Anvil](http://anvilformac.com/)
  - [Atom](https://atom.io/download/mac) or `brew cast install atom`
  - [Docker](https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac) or `brew cask install docker`
  - [ImageOptim](https://imageoptim.com/ImageOptim.tbz2) or `brew cask install imageoptim`
  - [MAMP](https://www.mamp.info/en/downloads/) or `brew cask install mamp`
  - [Postman](https://www.getpostman.com) or `brew cask install postman`
  - [Screaming Frog SEO Spider](https://www.screamingfrog.co.uk/seo-spider/) or `brew cask install screaming-frog-seo-spider`
  - [Sequel Pro](http://www.sequelpro.com/download) or `brew cask install sequel-pro`
  - [SourceTree](https://www.sourcetreeapp.com/download) or `brew cask install sourcetree`
  - [Sublime Text 3](http://www.sublimetext.com/3) or `brew cask install sublime-text`
  - [Unity](https://unity3d.com/get-unity) or `brew cask install unity`
  - [Visual Studio Code](https://code.visualstudio.com/download) or `brew cask install visual-studio-code`

- Utilities
  - [Audacity](http://audacityteam.org/)
  - [Dropbox](https://www.dropbox.com/install2) or `brew cask install dropbox`
  - [FileZilla](https://filezilla-project.org/download.php?type=client) or `brew cask install filezilla`
  - [Franz](http://meetfranz.com/#download) or `brew cask install franz`
  - [GIMP](https://www.gimp.org/downloads/) or `brew cask install gimp`
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
- Disable cache: `DevTools > Settings > Preferences > Network > Check Disable cache (while DevTools is open)`

## SourceTree

- Enable Dark Theme: `View > Theme > Dark`

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

### Styles

`~/.atom/styles.less`:

```less
// One Dark UI Theme Tweaks
.theme-one-dark-ui {
  .tab-bar {
    height: 3.4em;
    .tab {
      line-height: 3.4em;
      .title {
        margin: 0 2.4em 0 1.6em
      }
      .close-icon {
        top: 0.9em;
      }
    }
  }
}

// increase spacing between tab icons & tab titles
.tab-bar .tab .title.title:before {
  margin-right: .5em;
}
```

### Snippets

`~/.atom/snippets.cson`:

```cson
'*':

  'CLI SCP':
    'prefix': 'cli_scp'
    'body': 'scp ${1:username}@${2:host}:${3:/path/to/hosts/file/host_file.txt} ${4:~/desktop}'

'.text.html.basic, .text.html.php':

  'PHP js_dump':
    'prefix': 'php_jsdump'
    'body': """
      ?>
      <script>
        console.log( <?php json_encode( ${1:$variable} ) ?> );
      </script>
      <?php
    """

  'PHP pre_dump':
    'prefix': 'php_predump'
    'body': """
      echo '<pre>';
      var_dump(${1:$variable});
      echo '</pre>';
    """

  'PHP var_error_log':
    'prefix': 'php_varerrorlog'
    'body': """
      ob_start();                       // start buffer capture
      var_dump( ${1:$object} );              // dump the values
      $contents = ob_get_contents();    // put the buffer into a variable
      ob_end_clean();                   // end capture
      error_log( $contents );           // log contents of the result of var_dump( $object )
    """

  'WP site_url':
    'prefix': 'wp_siteurl'
    'body': """
      define('WP_HOME','http://example.com');
      define('WP_SITEURL','http://example.com');
    """

  'CDN: Angular 1':
    'prefix': 'cdn_angular1'
    'body': """
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
    """

  'CDN: jQuery 1':
    'prefix': 'cdn_jquery1'
    'body': """
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    """

  'CDN: jQuery 2':
    'prefix': 'cdn_jquery2'
    'body': """
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    """

  'CDN: jQuery 3':
    'prefix': 'cdn_jquery3'
    'body': """
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    """

  'CDN: jQuery UI':
    'prefix': 'cdn_jqueryui'
    'body': """
      <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    """

  'CDN: three.js':
    'prefix': 'cdn_threejs'
    'body': """
      <script src="https://ajax.googleapis.com/ajax/libs/threejs/r76/three.min.js"></script>
    """

'.source.css':

  'CSS Media Query':
    'prefix': 'css_mediaquery'
    'body': """
      @media screen and (min-width: ${1:320px}) {${2:}}
    """

  'CSS System Font Stack':
    'prefix': 'css_systemfontstack'
    'body': """
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
    """

'.source.js':

  'JS IIFE':
    'prefix': 'js_iife'
    'body': """
      (function() {
        ${1:'use strict'}

      })();
    """

  'JS Use Strict':
    'prefix': 'js_usestrict'
    'body': """
      'use strict';
    """

```

## Visual Studio Code

- Install Extensions:
  - EditorConfig for VS Code
  - [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- Config user settings:

`settings.json`

```json
// Place your settings in this file to overwrite the default settings
{
  "atomKeymap.promptV3Features": true,
  "diffEditor.ignoreTrimWhitespace": true,
  "editor.multiCursorModifier": "ctrlCmd",
  "editor.detectIndentation": false,
  "editor.insertSpaces": true,
  "editor.fontSize": 14,
  "editor.formatOnPaste": true,
  "editor.formatOnSave": true,
  "editor.minimap.enabled": true,
  "editor.renderIndentGuides": true,
  "editor.tabSize": 2,
  "editor.trimAutoWhitespace": true,
  "files.insertFinalNewline": true,
  "files.trimTrailingWhitespace": true,
  "gitlens.codeLens.locations.document": false,
  "gitlens.codeLens.recentChange.enabled": false,
  "prettier.singleQuote": true,
  "prettier.trailingComma": "es5",
  "typescript.check.npmIsInstalled": false,
  "window.reopenFolders": "all",
  "workbench.colorTheme": "One Dark Pro",
  "workbench.iconTheme": "vs-seti",
  "workbench.startupEditor": "newUntitledFile",
  "workbench.activityBar.visible": true
}
```

## Sublime Text

- [Install Package Control](https://packagecontrol.io/installation)
- Install Packages (Command-Shift-P)
  - [Oceanic Next Color Scheme](https://github.com/voronianski/oceanic-next-color-scheme)
  - [GitGutter](https://github.com/jisaacks/GitGutter)
  - [HTML-CSS-JS Prettify](https://github.com/victorporof/Sublime-HTMLPrettify)
  - [Sass](https://packagecontrol.io/packages/Sass)
- Load user settings from [`Preferences.sublime-settings`](/Preferences.sublime-settings)

## BBEdit

### Preferences

- `Appearance > List display font > System Font Regular - 12`
- `Editor Defaults > Soft wrap text to > Page guide`
- `Editor Defaults > Default font > Consolas for BBEdit - 13`
- `Editor Defaults > Tab width > 2`
- `Keyboard > "Home" and "End" key behavior > Move cursor to beginning and end of current line`
- `Keyboard > Allow Tab key to indent text blocks`
