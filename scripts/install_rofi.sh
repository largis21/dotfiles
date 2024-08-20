

VER=$(curl -s -qI https://github.com/davatorium/rofi/releases/latest | awk -F '/' '/^location/ {print  substr($NF, 1, length($NF)-1)}');

FILENAME=rofi-$VER.tar.gz
DOWNLOAD_URL="https://github.com/davatorium/rofi/releases/download/$VER/$FILENAME"

rm FILENAME

echo "Downloading $FILENAME..."
wget $DOWNLOAD_URL -q --show-progress
