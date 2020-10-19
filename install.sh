echo UBFI 2020 installing crocbox
apt update
apt install -y curl whiptail usbmuxd
apt install -y libimobiledevice6
mkdir -p /opt/crocbox
chmod 777 /opt/crocbox
wget https://assets.checkra.in/downloads/linux/cli/arm/d751f4b245bd4071c571654607ca4058e9e7dc4a5fa30639024b6067eebf5c3b/checkra1n -O /opt/crocbox/checkra1n
chmod +x /opt/crocbox/checkra1n
echo ACTION==\"add\", ATTRS{idVendor}==\"05ac\", ATTRS{idProduct}==\"1227\", RUN+=\"/opt/crocbox/checkra1n -c \&\& /usr/local/croc/bin/DO_A_BARREL_ROLL\" >> /etc/udev/rules.d/01-crocbox.rules
echo complete
