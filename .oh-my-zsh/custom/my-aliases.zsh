#
# Custom Aliases
#

# Shortcuts
alias db="cd ~/Documents/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
#alias g="git"
#alias h="history"
#alias j="jobs"
alias p="cd ~/projects"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Docker
alias dc="docker-compose"

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

# React
alias rnios="react-native run-ios"
alias rnandroid="react-native run-android"
alias rnreset="watchman watch-del-all && rm -rf node_modules && npm install && npm start -- --reset-cache"
alias lintreact="npm install --save-dev babel-eslint eslint eslint-config-airbnb eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react && echo '{ "extends": ["airbnb"], "plugins": ["jsx-a11y"], }' > .eslintrc"
