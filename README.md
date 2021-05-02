# Config

**Config** is a recipe to get a new Mac running from scratch, setup applications and developer environment. I use this repo to keep track of the important software and steps required to have a functioning system after a fresh install.

You are encouraged to fork this and modify it to your heart's content to match your own needs. **Please be sure to change your `.gitconfig` name and email address!**

## Dev Config

- Install [Xcode](https://itunes.apple.com/app/xcode/id497799835?mt=12) from the App Store
  - Install Command Line Tools: `xcode-select --install`
- Install [Homebrew](http://brew.sh/): `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`
  <!-- - Install [Homebrew-Cask](https://caskroom.github.io/): `brew tap caskroom/cask` -->

### Oh My Zsh

- Install: `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
- Plugins (add to `~/.zshrc`): `plugins=(git docker extract z)`

### iTerm2

- Install [iTerm2](https://www.iterm2.com/downloads.html): `brew cask install iterm2`

### RVM

- Install [rvm](https://rvm.io/rvm/install#quick-guided-install) (option #2 - Install RVM stable with ruby)
  - Install [GnuPG](https://www.gnupg.org/) `brew install gnupg gnupg2`
  - Install [GPG keys](https://rvm.io/rvm/install#install-gpg-keys): `gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB`
  - Install [rvm](https://rvm.io/rvm/install#quick-guided-install) stable with ruby: `\curl -sSL https://get.rvm.io | bash -s stable --ruby`

### NVM & Node.js

- Install [nvm](https://github.com/creationix/nvm#user-content-install-script)
- Add nvm export entry to `.zshrc` file:
  ```sh
  export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
  ```
- Install latest stable version of Node.js: `nvm install stable`

### Package Managers

_NPM is installed with Node and Bower's dead baby 💀_

- Install [Yarn](https://yarnpkg.com/en/docs/install#alternatives-stable) (without Node.js): `curl -o- -L https://yarnpkg.com/install.sh | bash`
  - _previously installed Yarn with `brew install yarn --ignore-dependencies` until homebrew stopped supporting the installation of packages without their dependencies_
  - _it's safe to upgrade using the command provided in the terminal after running yarn_
- Install [Composer](https://getcomposer.org/doc/00-intro.md#globally): `brew install composer`

### React Native

Prerequisites:

- Install [Node](https://nodejs.org/en/) (should have been installed in previous step)
- Install [Watchman](https://github.com/facebook/watchman)

iOS:

- Install [Xcode](https://nodejs.org/en/) (should have been installed in previous step
- Install [Xcode Command Line Tools](https://developer.apple.com/download/more/) (should have been installed in previous step)
- Install [CocoaPods](https://cocoapods.org/): `gem install cocoapods` (use this same command to update cocoapods, previously used `brew install cocoapods` to install)

Android:

- Install [Android Studio](https://developer.android.com/studio/index.html)
- Follow remaining steps for Android [RN Docs: Setting up the development environment](https://reactnative.dev/docs/environment-setup)

Expo:

- Install [Expo](https://expo.io/) (and [CRNA](https://github.com/react-community/create-react-native-app)): `npm install -g expo-cli`

Always Open Packager with iTerm:

We'll do this by Associating `.command` files with iTerm.

- Open `Finder.app`
- Find any `.command` file
- Right-click to bring up the context menu
- Choose Get Info
- Change Open with to `iterm.app`
- Click Change All...

### Mobile Dev Tools

- Install [Fastlane](https://docs.fastlane.tools/getting-started/ios/setup/): `gem install fastlane -NV`
- Install [Flipper](https://fbflipper.com/): `brew cask install flipper`
- Install [AppleSimulatorUtils](https://github.com/wix/AppleSimulatorUtils):
    ```
    brew tap wix/brew
    brew install applesimutils
    ```

### Jekyll

- Install [Bundler](https://bundler.io/): `gem install bundler`
- Install [Jekyll](https://jekyllrb.com/): `gem install jekyll`

### Git

- Verify git is installed: `git --version`
- Set username (global): `git config --global user.name "Josh Buchea"`
- Set commit email address (global): `git config --global user.email "verctrl@joshbuchea.com"`
- Set credential helper to OSX Keychain (global): `git config --global credential.helper osxkeychain` (_prevents sourcetree from continuously prompting for github password_)
- Generate or copy SSH key(s) `~/.ssh/id_rsa`, `~/.ssh/id_rsa.pub`

## Install Software

The software selected is software that is "tried and true" --- software I need after any fresh install. I often install other software not listed here, but is handled in a case-by-case basis.

### Install from App Store

- [1Password](https://1password.com/downloads/mac/) (after Dropbox)
- [Amphetamine](https://itunes.apple.com/app/amphetamine/id937984704?mt=12)
- [Fantastical](https://flexibits.com/fantastical) (from [Purchased tab](macappstore://showPurchasesPage))
- [Sip](https://itunes.apple.com/us/app/sip/id507257563?mt=12) (from [Purchased tab](macappstore://showPurchasesPage))

### Install from Third-Party Websites

- [Anvil](http://anvilformac.com/)
- [Franz 4](https://github.com/meetfranz/franz-app-legacy/releases)
- [Junecloud Automator Actions](http://junecloud.com/software/mac/junecloud-automator-actions.html)
- [Reactotron](https://github.com/infinitered/reactotron/releases)

### Install with Homebrew

<!-- Create brewfile? -->

- [1Clipboard](http://1clipboard.io/): `brew cask install 1clipboard`
- [Alfred](https://www.alfredapp.com/): `brew cask install alfred`
- [Atom](https://atom.io/download/mac): `brew cask install atom`
- [Audacity](http://audacityteam.org/): `brew cask install audacity`
- [Backblaze](https://secure.backblaze.com/download.htm): `brew cask install backblaze`
- [Brave](https://laptop-updates.brave.com/latest/osx): `brew cask install brave-browser`
- [Caprine](https://sindresorhus.com/caprine/): `brew cask install caprine`
- [Captain](https://getcaptain.co/): `brew cask install captain`
- [Choosy](https://www.choosyosx.com/): `brew cask install choosy`
- [Chrome](https://www.google.com/chrome/browser/desktop/): `brew cask install google-chrome`
- [Chromium](https://download-chromium.appspot.com/): `brew cask install chromium`
- [Discord](https://discordapp.com/download): `brew cask install discord`
- [Docker](https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac): `brew cask install docker`
- [Dropbox](https://www.dropbox.com/install2): `brew cask install dropbox`
- [FileZilla](https://filezilla-project.org/download.php?type=client): `brew cask install filezilla`
- [Firefox](http://firefox.com): `brew cask install firefox`
- [Flycut](https://github.com/TermiT/Flycut/releases): `brew cask install flycut`
- [GIMP](https://www.gimp.org/downloads/): `brew cask install gimp`
- [Google Backup and Sync](https://www.google.com/drive/download/backup-and-sync/): `brew cask install google-backup-and-sync`
- [HandBrake](https://handbrake.fr/downloads.php): `brew cask install handbrake`
- [Hidden Bar](https://github.com/dwarvesf/hidden): `brew cask install hiddenbar`
- [Hyper.app](https://hyper.is/): `brew cask install hyper`
- [ImageMagick](https://www.imagemagick.org/script/): `brew install imagemagick` (prefer Homebrew)
- [ImageOptim](https://imageoptim.com/ImageOptim.tbz2): `brew cask install imageoptim`
- [ItsyCal](https://www.mowglii.com/itsycal/): `brew cask install itsycal`
- [Kap](https://getkap.co/): `brew cask install kap`
- [KeepingYouAwake](https://github.com/newmarcel/KeepingYouAwake/releases): `brew cask install keepingyouawake`
- [LICEcap](https://www.cockos.com/licecap/): `brew cask install licecap`
- [MAMP](https://www.mamp.info/en/downloads/): `brew cask install mamp`
- [OBS](https://obsproject.com/): `brew cask install obs`
- [Overkill](https://github.com/KrauseFx/overkill-for-mac): `brew cask install overkill`
- [Postico](https://eggerapps.at/postico/): `brew cask install postico`
- [Postman](https://www.getpostman.com): `brew cask install postman`
- [React Native Debugger](https://github.com/jhen0409/react-native-debugger): `brew cask install react-native-debugger`
- [Rocket](https://matthewpalmer.net/rocket/): `brew cask install rocket`
- [Screaming Frog SEO Spider](https://www.screamingfrog.co.uk/seo-spider/): `brew cask install screaming-frog-seo-spider`
- [Sequel Pro](http://www.sequelpro.com/download): `brew cask install sequel-pro`
- [Skype](http://www.skype.com/en/download-skype/skype-for-computer/): `brew cask install skype`
- [Slack](https://slack.com/downloads/mac): `brew cask install slack` ([App Store](https://itunes.apple.com/app/slack/id803453959?mt=12))
- [SourceTree](https://www.sourcetreeapp.com/download): `brew cask install sourcetree`
- [Spectacle](https://www.spectacleapp.com/): `brew cask install spectacle`
- [Spotify](https://www.spotify.com/us/download/mac/): `brew cask install spotify`
- [Sublime Text 3](http://www.sublimetext.com/3): `brew cask install sublime-text`
- [SuperDuper!](http://www.shirt-pocket.com/downloads/SuperDuper!.dmg): `brew cask install superduper`
- [The Unarchiver](https://theunarchiver.com/): `brew cask install the-unarchiver` ([App Store](https://itunes.apple.com/app/the-unarchiver/id425424353?mt=12))
- [Transmission](https://transmissionbt.com/download/): `brew cask install transmission`
- Tree: `brew install tree`
- [Unity](https://unity3d.com/get-unity): `brew cask install unity`
- [VLC media player](http://www.videolan.org/vlc/download-macosx.html): `brew cask install vlc`
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads): `brew cask install virtualbox`
- [Visual Studio Code](https://code.visualstudio.com/download): `brew cask install visual-studio-code`
- [Wget](https://www.gnu.org/software/wget/): `brew install wget` (prefer Homebrew)
- [Zoom.us](https://zoom.us/): `brew cask install zoomus`

## Config

- [Config Cobalt2 theme for iTerm2 and Zsh](apps/cobalt2.md)
- [Config macOS](macOS.md)

### Config Apps

- [Config Atom](apps/atom.md)
- [Config BBEdit](apps/bbedit.md)
- [Config Chrome](apps/chrome.md)
- [Config Hyper.app](apps/hyper.md)
- [Config Sublime Text](apps/sublime-text.md)
- [Config VS Code](apps/vs-code.md)

### Adobe Creative Cloud

- Disable auto-launch on login: `launchctl unload -w /Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist`
- Enable auto-launch on login: `launchctl load -w /Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist`

### Dropbox

- `Preferences > Network > Bandwidth: Change Settings... > Upload rate > Don't limit`

### Safari

- Show full website address: `Preferences > Advanced > Smart Search Field: Show full website address`
- Enable Developer menu: `Preferences > Advanced > Show Develop menu in menu bar`
- Disable swipe between pages: `System Preferences > Trackpad > More Gestures > Swipe between pages`

### SourceTree

- Enable Dark Theme: `View > Theme > Dark`

## Clean Up Mac

[What to do before you sell, give away, or trade in your Mac](https://support.apple.com/en-us/HT201065)

Important tasks to complete before surrendering a Mac:

- Remove Dropbox
- Disassociate the computer with the Mac App Store: `Store > Sign Out`
- Disassociate the computer with iMessage in Messages.app: `Preferences... > iMessage > Settings > Sign Out`
- Disassociate the computer with the Apple Music: `Account > Authorizations > Deauthorize This Computer...`
- Sign out of Apple Music: `Account > Sign Out`
- Sign out of iCloud: `System Preferences > Apple ID > Overview > Sign Out`
- Turn off Find My Mac: `System Preferences > Internet Accounts > iCloud > Uncheck Find My Mac`
- Deauthorize any other apps (Adobe Creative Suite, ?)
- Remove the Mac from my [support profile](https://supportprofile.apple.com/)
- Disable FileVault Drive Encryption: `System Preferences > Security & Privacy > FileVault > Turn Off FileVault...` (speeds up the disk erase process)
- If desired, reinstall macOS as per [Apple’s instructions](https://support.apple.com/en-us/HT201065)

**Note:** Borrowed these clean up steps from a blog post by Casey Liss: [Starting Anew on macOS](https://www.caseyliss.com/2016/7/2/new-mac-who-dis)
