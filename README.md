# Config

**Config** is a recipe to get a new Mac running from scratch, setup applications and developer environment. I use this repo to keep track of the important software and steps required to have a functioning system after a fresh install.

You are encouraged to fork this and modify it to your heart's content to match your own needs. **Please be sure to change your `.gitconfig` name and email address!**

## Dev Config

- Install [Homebrew](http://brew.sh/): `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
  - Homebrew will install Xcode Command Line Tools (manually install with `xcode-select --install`)
- Install [Xcode](https://itunes.apple.com/app/xcode/id497799835?mt=12) from the App Store

### iTerm2

- Install [iTerm2](https://www.iterm2.com/downloads.html): `brew install --cask iterm2`
- Load Custom Profile from `iterm2/Josh Custom iTerm2 Profile.json`
- Set Theme: Preferences > Appearance > General > Theme: Choose **Minimal**

### Oh My Zsh

- Install Oh My Zsh: `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
- Install Custom Plugins:
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh): `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh): `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
- Add Installed Custom Plugins to `~/.zshrc`: `plugins=(git z zsh-autosuggestions zsh-syntax-highlighting)`
- Copy Personal Custom Theme `joshbuchea.zsh-theme` to: `~/.oh-my-zsh/custom/themes`

### RVM

Install [RVM stable with ruby](https://rvm.io/rvm/install#any-other-system):

- Install [GnuPG](https://www.gnupg.org/) `brew install gnupg gnupg2`
- Install [GPG keys](https://rvm.io/rvm/install#install-gpg-keys) to verify installation package: `gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB`
- Install [rvm](https://rvm.io/rvm/install#quick-guided-install) stable with ruby: `\curl -sSL https://get.rvm.io | bash -s stable --ruby`

### NVM & Node.js

- Install [nvm](https://github.com/creationix/nvm#user-content-install-script)
- Add nvm export entry to `.zshrc` file:
  ```sh
  export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
  ```
- Install latest stable version of Node.js: `nvm install stable`
- Install latest LTS version of Node.js: `nvm install --lts`
- Upgrading to latest release of major version of Node.js: `nvm install 16`
- Upgrading to specific version of Node.js: `nvm install v10.15.3`
- Upgrading npm to latest version: `nvm use stable && npm install npm@latest -g`
- Using latest release of major version of Node.js: `nvm use 16`
- Set or change default version of Node.js: `nvm alias default 16.15.1`

### Package Managers

NPM is installed with Node and Bower's dead baby 💀

- Install [Yarn](https://yarnpkg.com/getting-started/install): `npm install -g yarn`
  - _it's safe to upgrade using the command provided in the terminal after running yarn:_ `curl --compressed -o- -L https://yarnpkg.com/install.sh | bash`
- ~~Install [Composer](https://getcomposer.org/doc/00-intro.md#globally): `brew install composer`~~

### React Native

Prerequisites:

- Install [Node](https://nodejs.org/en/) (should have been installed in previous step)
- Install [Watchman](https://github.com/facebook/watchman): `brew install watchman`

iOS:

- Install [Xcode](https://nodejs.org/en/) (should have been installed in previous step
- Install [Xcode Command Line Tools](https://developer.apple.com/download/more/) (should have been installed in previous step)
- Install [CocoaPods](https://cocoapods.org/): `gem install cocoapods`
  - don't preface command with `sudo` since we use `rvm`
  - use this same command to update `cocoapods`
  - previously used `brew install cocoapods` to install

Android:

- Install [Android Studio](https://developer.android.com/studio/index.html): `brew install --cask android-studio`
- Install JDK: `brew install --cask adoptopenjdk/openjdk/adoptopenjdk8`
- Follow remaining steps for Android [RN Docs: Setting up the development environment](https://reactnative.dev/docs/environment-setup)
  - Configure SDK
    - SDK Platforms
      - Show Package Details: Check
      - Android 10 (Q) SDK
        - Android SDK Platform 29: Check
        - `Intel x86 Atom_64 System Image` or `Google APIs Intel x86 Atom System Image`: Check
    - SDK Tools
      - Show Package Details: Check
      - Android SDK Build-Tools
        - `29.0.2`: Check
        - Android SDK Command-line Tools (latest)
          - Android SDK Command-line Tools (latest): Check
    - Press Apply Button
    - Accept license agreements
    - Press Done Button once installation is complete
  - Add `ANDROID_HOME` environment variable to `~/.zshrc` (below rvm and nvm)

Expo:

- Install [Expo](https://expo.io/) (and [CRNA](https://github.com/react-community/create-react-native-app)): `npm install -g expo-cli`
  - Upgrade using the same command

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
- Install [Flipper](https://fbflipper.com/): `brew install --cask flipper`
- Install [AppleSimulatorUtils](https://github.com/wix/AppleSimulatorUtils):
    ```shell
    brew tap wix/brew
    brew install applesimutils
    ```
- Install [scrcpy](https://github.com/Genymobile/scrcpy): `brew install scrcpy`

### Jekyll

- Install [Bundler](https://bundler.io/): `gem install bundler`
- Install [Jekyll](https://jekyllrb.com/): `gem install jekyll`

### Git

- Verify git is installed: `git --version`
- Set username (global): `git config --global user.name "Josh Buchea"`
- Set commit email address (global): `git config --global user.email "verctrl@joshbuchea.com"`
- Set credential helper to OSX Keychain (global): `git config --global credential.helper osxkeychain` (_prevents SourceTree from continuously prompting for GitHub password_)
- Generate or copy SSH key(s) `~/.ssh/id_rsa`, `~/.ssh/id_rsa.pub`

## Install Software

The software selected is software that is "tried and true" --- software I need after any fresh install. I often install other software not listed here, but is handled in a case-by-case basis.

### Install from App Store

- [Fantastical](https://flexibits.com/fantastical) (from [Purchased tab](macappstore://showPurchasesPage))
- [Sip](https://itunes.apple.com/us/app/sip/id507257563?mt=12) (from [Purchased tab](macappstore://showPurchasesPage))

### Install from Third-Party Websites

- [Junecloud Automator Actions](http://junecloud.com/software/mac/junecloud-automator-actions.html)

### Install with Homebrew

<!-- Create brewfile? -->

- [1Password](https://1password.com/downloads/mac/): `brew install --cask 1password`
  - Installer said install failed, but app was installed correctly: https://1password.community/discussion/comment/577531/#Comment_577531
  - Data is synced to 1password.com — no need to install Dropbox first
- [Alfred](https://www.alfredapp.com/): `brew install --cask alfred`
- [Audacity](http://audacityteam.org/): `brew install --cask audacity`
- [Backblaze](https://secure.backblaze.com/download.htm): `brew install --cask backblaze`
- [Bartender](https://www.macbartender.com/): `brew install --cask bartender`
- [Brave](https://laptop-updates.brave.com/latest/osx): `brew install --cask brave-browser`
- [Chrome](https://www.google.com/chrome/browser/desktop/): `brew install --cask google-chrome`
- [CleanShot](https://cleanshot.com/): `brew install --cask cleanshot`
- [Discord](https://discordapp.com/download): `brew install --cask discord`
- [Dropbox](https://www.dropbox.com/install2): `brew install --cask dropbox`
- [Firefox](http://firefox.com): `brew install --cask firefox`
- [Flycut](https://github.com/TermiT/Flycut/releases): `brew install --cask flycut`
- [GIMP](https://www.gimp.org/downloads/): `brew install --cask gimp`
- [Hazel](https://www.noodlesoft.com/): `brew install --cask hazel`
- [ImageMagick](https://www.imagemagick.org/script/): `brew install imagemagick` (prefer Homebrew)
- [ImageOptim](https://imageoptim.com/ImageOptim.tbz2): `brew install --cask imageoptim`
- [Insomnia](https://insomnia.rest/download): `brew install --cask insomnia`
- [iStat Menus](https://bjango.com/mac/istatmenus/): `brew install --cask istat-menus`
- [ItsyCal](https://www.mowglii.com/itsycal/): `brew install --cask itsycal`
- [Keybase](https://keybase.io/docs/the_app/install_macos): `brew install --cask keybase`
- [KeepingYouAwake](https://github.com/newmarcel/KeepingYouAwake/releases): `brew install --cask keepingyouawake`
- [Keyboard Maestro](https://www.keyboardmaestro.com/main/): `brew install --cask keyboard-maestro`
- [Obsidian](https://github.com/obsidianmd/obsidian-releases/releases/): `brew install --cask obsidian`
- [Overkill](https://github.com/KrauseFx/overkill-for-mac): `brew install --cask overkill`
- [Skype](http://www.skype.com/en/download-skype/skype-for-computer/): `brew install --cask skype`
- [Slack](https://slack.com/downloads/mac): `brew install --cask slack`
- [SourceTree](https://www.sourcetreeapp.com/download): `brew install --cask sourcetree`
- [Spectacle](https://www.spectacleapp.com/): `brew install --cask spectacle`
- [Spotify](https://www.spotify.com/us/download/mac/): `brew install --cask spotify`
- [Sublime Text 3](http://www.sublimetext.com/3): `brew install --cask sublime-text`
- [SuperDuper!](http://www.shirt-pocket.com/downloads/SuperDuper!.dmg): `brew install --cask superduper`
- [The Unarchiver](https://theunarchiver.com/): `brew install --cask the-unarchiver` ([App Store](https://itunes.apple.com/app/the-unarchiver/id425424353?mt=12))
- Tree: `brew install tree`
- [Visual Studio Code](https://code.visualstudio.com/download): `brew install --cask visual-studio-code`
- [Visual Studio Code Insiders](https://code.visualstudio.com/insiders/)
- [Wget](https://www.gnu.org/software/wget/): `brew install wget` (prefer Homebrew)
- [Zoom.us](https://zoom.us/): `brew install --cask zoomus`

## Config

- [Config macOS](macOS.md)

### Config Apps

- [Config Adobe Creative Cloud](apps/adobe-creative-cloud.md)
- [Config Chrome](apps/chrome.md)
- [Config Sublime Text](apps/sublime-text.md)
- [Config VS Code](apps/vs-code.md)

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
- Remove iCloud Drive (Archive) folder: `~/iCloud Drive (Archive)`
- Remove Photos Library: `~/Pictures/Photos Library.photoslibrary`
- Deauthorize any other apps (Adobe Creative Suite, ?)
- Remove the Mac from my [support profile](https://supportprofile.apple.com/)
- Disable FileVault Drive Encryption: `System Preferences > Security & Privacy > FileVault > Turn Off FileVault...` (speeds up the disk erase process)
- If desired, reinstall macOS as per [Apple’s instructions](https://support.apple.com/en-us/HT201065)

**Note:** Borrowed some steps from this blog post by Casey Liss: [Starting Anew on macOS](https://www.caseyliss.com/2016/7/2/new-mac-who-dis)
