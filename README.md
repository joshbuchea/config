# Config

**Config** is a recipe to get a new Mac running from scratch, setup applications and developer environment. I use this repo to keep track of the important software and steps required to have a functioning system after a fresh install.

You are encouraged to fork this and modify it to your heart's content to match your own needs. **Please be sure to change your `.gitconfig` name and email address!**

## Clean Up Mac

Important tasks to complete before surrending a Mac:

- Remove Dropbox
- Disassociate the computer with the iTunes Store
- Disassociate the computer with the Mac App Store
- Disassociate the computer with iMessage in Messages.app
- Turn off Find My Mac
- Remove the Mac from my [support profile](https://supportprofile.apple.com/)
- If desired, reinstall macOS as per [Apple’s instructions](https://support.apple.com/en-us/HT201065)

**Note:** Borrowed these steps from Casey Liss's blog post: [Starting Anew on macOS](https://www.caseyliss.com/2016/7/2/new-mac-who-dis)

## Dev Config

- Install [Xcode](https://itunes.apple.com/app/xcode/id497799835?mt=12) from the App Store
  - Install Command Line Tools: `xcode-select --install`
- Install [Homebrew](http://brew.sh/): `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
  <!-- - Install [Homebrew-Cask](https://caskroom.github.io/): `brew tap caskroom/cask` -->

### Oh My Zsh

- Install: `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
- Plugins (add to `~/.zshrc`): `plugins=(git docker extract z)`

### iTerm2

- Install [iTerm2](https://www.iterm2.com/downloads.html): `brew cask install iterm2`

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

_NPM is installed with Node and Bower's dead baby 💀_

- Install [Yarn](https://yarnpkg.com/en/docs/install#alternatives-stable) (without Node.js): `curl -o- -L https://yarnpkg.com/install.sh | bash` (_previously installed Yarn with `brew install yarn --ignore-dependencies` until homebrew stopped supporting the installation of packages without their dependencies_)
- Install [Composer](https://getcomposer.org/doc/00-intro.md#globally): `brew install composer`

### React Native

- Install [React Native](https://facebook.github.io/react-native/docs/getting-started.html): `npm install -g react-native-cli`
- Install [Expo](https://expo.io/) (and [CRNA](https://github.com/react-community/create-react-native-app)): `npm install -g expo-cli`

### Jekyll

- Check whether you have Ruby `2.1.0` or higher installed:
    ```sh
    $ ruby --version
    ruby 2.X.X
    ```
- Install Bundler: `gem install bundler`
- Install Jekyll: `gem install jekyll`

### Git

- Verify git is installed: `git --version`
- Set username (global): `git config --global user.name "Josh Buchea"`
- Set commit email address (global): `git config --global user.email "verctrl@joshbuchea.com"`
- Set credential helper to OSX Keychain (global): `git config --global credential.helper osxkeychain` (_prevents sourcetree from continuously prompting for github password_)
- Generate or copy SSH key(s) `~/.ssh/id_rsa`, `~/.ssh/id_rsa.pub`

## Install Software

The software selected is software that is "tried and true" --- software I need after any fresh install. I often install other software not listed here, but is handled in a case-by-case basis.

### Install from App Store

- [1Password](https://itunes.apple.com/app/1password-password-manager/id443987910?mt=12) (after Dropbox)
- [Amphetamine](https://itunes.apple.com/app/amphetamine/id937984704?mt=12)
- [Fantastical](https://flexibits.com/fantastical) (from [Purchased tab](macappstore://showPurchasesPage))
- [Sip](https://itunes.apple.com/us/app/sip/id507257563?mt=12) (from [Purchased tab](macappstore://showPurchasesPage))

### Install from Third-Party Websites or Homebrew

#### Browsers

- [Chrome](https://www.google.com/chrome/browser/desktop/): `brew cask install google-chrome`
- [Chromium](https://download-chromium.appspot.com/): `brew cask install chromium`
- [Firefox](http://firefox.com): `brew cask install firefox`

#### Development

- [Anvil](http://anvilformac.com/)
- [Atom](https://atom.io/download/mac): `brew cask install atom`
- [Captain](https://getcaptain.co/): `brew cask install captain`
- [Docker](https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac): `brew cask install docker`
- [Hyper.app](https://hyper.is/): `brew cask install hyper`
- [ImageMagick](https://www.imagemagick.org/script/): `brew install imagemagick` (prefer Homebrew)
- [ImageOptim](https://imageoptim.com/ImageOptim.tbz2): `brew cask install imageoptim`
- [MAMP](https://www.mamp.info/en/downloads/): `brew cask install mamp`
- [Postico](https://eggerapps.at/postico/): `brew cask install postico`
- [Postman](https://www.getpostman.com): `brew cask install postman`
- [React Native Debugger](https://github.com/jhen0409/react-native-debugger): `brew cask install react-native-debugger`
- [Reactotron](https://github.com/infinitered/reactotron/releases)
- [Screaming Frog SEO Spider](https://www.screamingfrog.co.uk/seo-spider/): `brew cask install screaming-frog-seo-spider`
- [Sequel Pro](http://www.sequelpro.com/download): `brew cask install sequel-pro`
- [SourceTree](https://www.sourcetreeapp.com/download): `brew cask install sourcetree`
- [Sublime Text 3](http://www.sublimetext.com/3): `brew cask install sublime-text`
- [Unity](https://unity3d.com/get-unity): `brew cask install unity`
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads): `brew cask install virtualbox`
- [Visual Studio Code](https://code.visualstudio.com/download): `brew cask install visual-studio-code`
- [Wget](https://www.gnu.org/software/wget/): `brew install wget` (prefer Homebrew)

#### Utilities

- [1Clipboard](http://1clipboard.io/): `brew cask install 1clipboard`
- [Alfred](https://www.alfredapp.com/): `brew cask install alfred`
- [Audacity](http://audacityteam.org/): `brew cask install audacity`
- [Backblaze](https://secure.backblaze.com/download.htm): `brew cask install backblaze`
- [Caprine](https://sindresorhus.com/caprine/): `brew cask install caprine`
- [Discord](https://discordapp.com/download): `brew cask install discord`
- [Dropbox](https://www.dropbox.com/install2): `brew cask install dropbox`
- [FileZilla](https://filezilla-project.org/download.php?type=client): `brew cask install filezilla`
- [Franz 4](https://github.com/meetfranz/franz-app-legacy/releases)
- [Flycut](https://github.com/TermiT/Flycut/releases): `brew cask install flycut`
- [GIMP](https://www.gimp.org/downloads/): `brew cask install gimp`
- [Google Backup and Sync](https://www.google.com/drive/download/backup-and-sync/): `brew cask install google-backup-and-sync`
- [HandBrake](https://handbrake.fr/downloads.php): `brew cask install handbrake`
- [ItsyCal](https://www.mowglii.com/itsycal/): `brew cask install itsycal`
- [Junecloud Automator Actions](http://junecloud.com/software/mac/junecloud-automator-actions.html)
- [Kap](https://getkap.co/): `brew cask install kap`
- [KeepingYouAwake](https://github.com/newmarcel/KeepingYouAwake/releases): `brew cask install keepingyouawake`
- [LICEcap](https://www.cockos.com/licecap/): `brew cask install licecap`
- [OBS](https://obsproject.com/): `brew cask install obs`
- [Rocket](https://matthewpalmer.net/rocket/): `brew cask install rocket`
- [Skype](http://www.skype.com/en/download-skype/skype-for-computer/): `brew cask install skype`
- [Slack](https://slack.com/downloads/mac): `brew cask install slack` ([App Store](https://itunes.apple.com/app/slack/id803453959?mt=12))
- [Spotify](https://www.spotify.com/us/download/mac/): `brew cask install spotify`
- [SuperDuper!](http://www.shirt-pocket.com/downloads/SuperDuper!.dmg): `brew cask install superduper`
- [The Unarchiver](https://theunarchiver.com/): `brew cask install the-unarchiver` ([App Store](https://itunes.apple.com/app/the-unarchiver/id425424353?mt=12))
- [Transmission](https://transmissionbt.com/download/): `brew cask install transmission`
- [VLC media player](http://www.videolan.org/vlc/download-macosx.html): `brew cask install vlc`
- [Zoom.us](https://zoom.us/): `brew cask install zoomus`

## Config

- [Config Cobalt2 theme for iTerm2 and Zsh](Cobalt2.md)
- [Config macOS](macOS.md)

### Config Software

- [Config Atom](Atom.md)
- [Config BBEdit](BBEdit.md)
- [Config Hyper.app](Hyper.md)

### Adobe Creative Cloud

- Disable auto-launch on login: `launchctl unload -w /Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist`
- Enable auto-launch on login: `launchctl load -w /Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist`

### Chrome

#### DevTools

- Enable Dark Theme: `DevTools > Settings > Preferences > Appearance > Theme > Select Dark`
- Show user agent shadow DOM: `DevTools > Settings > Preferences > Elements > Show user agent shadow DOM`
- Disable cache (while DevTools is open): `DevTools > Settings > Preferences > Network > Disable cache (while DevTools is open)`
- Auto-open DevTools for popups: `DevTools > Settings > Preferences > DevTools > Auto-open DevTools for popups`

### Dropbox

- `Preferences > Network > Bandwidth: Change Settings... > Upload rate > Don't limit`

### Safari

- Show full website address: `Preferences > Advanced > Smart Search Field: Show full website address`
- Enable Developer menu: `Preferences > Advanced > Show Develop menu in menu bar`
- Disable swipe between pages: `System Preferences > Trackpad > More Gestures > Swipe between pages`

### SourceTree

- Enable Dark Theme: `View > Theme > Dark`

### Sublime Text

- [Install Package Control](https://packagecontrol.io/installation)
- Install Packages (Command-Shift-P)
  - [Oceanic Next Color Scheme](https://github.com/voronianski/oceanic-next-color-scheme)
  - [GitGutter](https://github.com/jisaacks/GitGutter)
  - [HTML-CSS-JS Prettify](https://github.com/victorporof/Sublime-HTMLPrettify)
  - [Sass](https://packagecontrol.io/packages/Sass)
- Load user settings from [`Preferences.sublime-settings`](/sublime-text/Preferences.sublime-settings)

### Visual Studio Code

- Load user settings from [`settings.json`](/vs-code/settings.json) to `~/Library/Application Support/Code/User/settings.json`
- Install Extensions:
  - [Atom Keymap](https://marketplace.visualstudio.com/items?itemName=ms-vscode.atom-keybindings)
  - [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
  - [Color Highlight](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight)
  - [DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv)
  - [Formatting Toggle](https://marketplace.visualstudio.com/items?itemName=tombonnike.vscode-status-bar-format-toggle)
  - [GraphQL for VSCode](https://marketplace.visualstudio.com/items?itemName=kumar-harsh.graphql-for-vscode)
  - [MDX](https://marketplace.visualstudio.com/items?itemName=silvenon.mdx)
  - [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
  - [vscode-styled-components](https://marketplace.visualstudio.com/items?itemName=jpoissonnier.vscode-styled-components)
  <!-- - EditorConfig for VS Code? -->
