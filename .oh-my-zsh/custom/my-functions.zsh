#
# Custom Functions
#

function mov2gif() {
  local width=${2:-320}
  ffmpeg -i "$1" -vf scale=${width}:-1 -r 10 -f image2pipe -vcodec ppm - |\
  convert -delay 5 -layers Optimize -loop 0 - "${1%.*}.gif"
}
