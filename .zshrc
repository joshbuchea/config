# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/josh/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="joshbuchea"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z zsh-autosuggestions zsh-syntax-highlighting)

# Disable warning "Insecure completion-dependent directories detected"
# Comment out the line below to re-enable this warning
ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

# rvm
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# NOTE: Unsure why, but needed to move this above other PATH changes to correctly
# use rvm ruby rather than system ruby ¯\_(ツ)_/¯

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Python/PIP
export PATH="$PATH:/Users/josh/Library/Python/3.9/bin"

# Android SDK
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
# JAVA_HOME path was found in Android Studio 4.2 > File > Project Structure > SDK Location > JDK
export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#
# Custom Aliases
#

# Shortcuts
alias c="clear"
alias db="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
#alias g="git"
#alias h="history"
alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
#alias j="jobs"
alias p="cd ~/projects"
alias pp="cd ~/projects/personal"
alias work="cd ~/projects/axios/axios-app"

# Print available colors
# alias colors="for i in {1..256}; do print -P \"%F{$i}Color : $i\"; done;"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# Display current active screen resolution(s)
alias screenres="system_profiler SPDisplaysDataType | grep Resolution"

# Composer
# alias composer="php /usr/local/bin/composer.phar"

# Docker
alias dc="docker-compose"
alias dps="docker ps -a --format 'table {{.Names}}\\t{{.Image}}\\t{{.RunningFor}} ago\\t{{.Status}}'"

# Git
alias gs="git status"
alias push="git push"
alias stash='git stash push -m $(date +%F_%T)' # single quotes necessary to interpolate date during execution

# Gource
alias gourceit="gource --hide dirnames,filenames --seconds-per-day 0.1 --auto-skip-seconds 1 -1280x720 -o - | ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i - -vcodec libx264 -preset ultrafast -pix_fmt yuv420p -crf 1 -threads 0 -bf 0 gource.mp4"

# MAMP

## MAMP: Clear logs
alias mampclearphp="cat /dev/null > '/Applications/MAMP/logs/php_error.log'"
alias mampclearmysql="cat /dev/null > '/Applications/MAMP/logs/mysql_error_log.err'"
alias mampclearapache="cat /dev/null > '/Applications/MAMP/logs/apache_error.log'"
alias mampclear="mampclearphp; mampclearmysql; mampclearapache;"

## MAMP: Directories
alias mampdirphp="echo /Applications/MAMP/bin/php/php[version]/bin/php"
alias mampdirmysql="echo /Applications/MAMP/Library/bin/mysql"

## MAMP: Tail logs
alias mamptailphp="tail -f /Applications/MAMP/logs/php_error.log"
alias mamptailmysql="tail -f /Applications/MAMP/logs/mysql_error_log.err"
alias mamptailapache="tail -f /Applications/MAMP/logs/apache_error.log"

## MySQL
alias mysqlimport="/Applications/MAMP/Library/bin/mysql -u root --password=root database_name < ~/Desktop/export.sql"
alias mysqlexport="/Applications/MAMP/Library/bin/mysqldump -u root --password=root database_name > ~/Desktop/export.sql"

# NPM
alias fnpm="find . -name 'node_modules' -type d -prune"
alias rnpm="find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' +"

# React
alias lintreact="npm install --save-dev babel-eslint eslint eslint-config-airbnb eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react && echo '{ "extends": ["airbnb"], "plugins": ["jsx-a11y"], }' > .eslintrc"

# React Native
alias rna="react-native run-android"
alias rni="react-native run-ios"
alias rninstall="yarn && rnpods"
alias rnp="rnpods"
alias rnpods="cd ios && pod install && cd .."
alias rnstart="yarn react-native start --reset-cache"
alias rncc="watchman watch-del-all && rm -rf node_modules && rm -rf $TMPDIR/react-; rm -rf $TMPDIR/haste-; rm -rf $TMPDIR/metro-*; && yarn cache clean"
# alias rnreset="watchman watch-del-all && rm -rf node_modules && npm install && npm start -- --reset-cache"
alias rns="react-native start --reset-cache"
alias rnv="react-native --version"
alias ya="yarn android"
alias yi="yarn ios"
alias emus="emulator -list-avds"
alias sims="xcrun simctl list devices"
alias rnipad="npx react-native run-ios --simulator='iPad (8th generation)'"
alias adbreverse="adb reverse tcp:8081 tcp:8081"

# SSH
alias sshgen="echo ssh-keygen -t rsa -b 4096 -C \"your_email@example.com\""
alias sshagent="echo ssh-add -K ~/.ssh/key_name"

# Work
alias axios="cd ~/projects/axios/axios-app"

# Yarn
alias ys="yarn start"
alias yt="yarn test"

# ZSH
alias zource="source ~/.zshrc"

#
# Custom Functions
#

# React Native - Clear Cache
#
# - maybe clear /dist folders?
function rncc2() {
  print "Clearing watchman watches..."
  watchman watch-del-all
  print ""

  # RN <0.50 only?
  print "Clearing the Haste Module Map..."
  rm -rf ${TMPDIR}haste-map-react-native-packager-*
  print ""

  # RN <0.50 only?
  print "Clearing react-* directory..."
  rm -rf ${TMPDIR}react-*
  print ""

  print "Clearing the React Native Packager Cache..."
  rm -rf ${TMPDIR}react-native-packager-cache-*
  print ""

  print "Clearing the Metro Bundler Cache..."
  rm -rf ${TMPDIR}metro-bundler-cache-*
  print ""

  print "Removing node_modules..."
  rm -rf node_modules
  print ""

  print "Clearing yarn cache..."
  yarn cache clean
  print ""
}

# Tree
#
# Displays current directory structure with a given
#
# Other potential directories to ignore: bin, docs, lib, test*, test_*, ?
function t() {
  tree -I "node_modules|cache" -L "${1:-3}"
}

# Git Add & Commit
#
# Adds all modified files to staging and commits with a given description or
# falls back to a default message when no description is provided
function gitac() {
  git add .
  git commit -m "${1:-update}"
  # git push
}

# Git Update
#
# Stash any work-in-progress, checkout master, pull latest, checkout previous branch, restore stash
function gitupdate() {
  git stash
  git checkout master
  git pull
  git checkout -
  git stash pop
}

# Git Undo
#
# Reverts the last N commits locally
function gitundo() {
  git reset --soft HEAD~"${1:-1}"
}

# In iTerm2, run command in new tab
#
# Usage: newtabi single-command
# Advanced: newtabi 'git checkout master'
function newtabi(){  
  osascript \
    -e 'tell application "iTerm2" to tell current window to set newWindow to (create tab with default profile)'\
    -e "tell application \"iTerm2\" to tell current session of newWindow to write text \"${@}\""
}

# Mov2Gif
#
# Converts mov to gif
function mov2gif() {
  local width=${2:-320}
  ffmpeg -i "$1" -vf scale=${width}:-1 -r 10 -f image2pipe -vcodec ppm - |\
  convert -delay 5 -layers Optimize -loop 0 - "${1%.*}.gif"
}

# Convert video to GIF
#
# Usage: vid2gif in.mov [width] [fps]
#
# typical gif framerates seem to be between 10–20
#
# possibly run through gif optimization tool
#
# ffmpeg options explained:
#
# -i    input
# -y    overwrite output files without confirmation
# -t    duration
# -ss   position
#
function vid2gif() {
  local width=${2:-600}
  local rate=${3:-20}
  local filters="fps=$rate,scale=$width:-1:flags=lanczos"

  # generate a palette
  #
  # not sure if palette needs scale or flags (or all of $filters?)...
	ffmpeg -i "$1" -vf "$filters,palettegen" -y palette.png

  # then generate gif with palette
  ffmpeg -i "$1" -i palette.png -filter_complex "$filters,paletteuse" "${1%.*}.gif"

  # remove palette image file
  rm palette.png
}

# Print available colors
function colors() {
  for i in {1..256}
  do print -P "%F{$i}Color : $i"
  done
}

# TODO: Maybe lazy load node stuff in shell to improve loading time?
# nvm() {
#     unset -f nvm
#     export NVM_DIR=~/.nvm
#     [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#     [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
#     nvm "$@"
# }
# node() {
#     unset -f node
#     export NVM_DIR=~/.nvm
#     [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#     [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
#     node "$@"
# }
# npm() {
#     unset -f npm
#     export NVM_DIR=~/.nvm
#     [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#     [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
#     npm "$@"
# }
# yarn() {
#     unset -f yarn
#     export NVM_DIR=~/.nvm
#     [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#     [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
#     yarn "$@"
# }