# Path to your oh-my-zsh installation.
export ZSH=/Users/joshbuchea/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew docker extract git node npm osx z)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Android SDK
# export ANDROID_HOME=/usr/local/opt/android-sdk

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

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
alias db="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
#alias g="git"
#alias h="history"
#alias j="jobs"
alias p="cd ~/projects"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# Display current active screen resolution(s)
alias screenres="system_profiler SPDisplaysDataType | grep Resolution"

# Composer
# alias composer="php /usr/local/bin/composer.phar"

# Docker
alias dc="docker-compose"
alias dps="docker ps -a --format 'table {{.Names}}\\t{{.Image}}\\t{{.RunningFor}} ago\\t{{.Status}}'"

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

# React
alias rnios="react-native run-ios"
alias rnandroid="react-native run-android"
alias rnreset="watchman watch-del-all && rm -rf node_modules && npm install && npm start -- --reset-cache"
alias lintreact="npm install --save-dev babel-eslint eslint eslint-config-airbnb eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react && echo '{ "extends": ["airbnb"], "plugins": ["jsx-a11y"], }' > .eslintrc"

# SSH
alias sshgen="echo ssh-keygen -t rsa -b 4096 -C \"your_email@example.com\""
alias sshagent="echo ssh-add -K ~/.ssh/key_name"

#
# Custom Functions
#

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
