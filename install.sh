mkdir -p /opt/cumbox
chmod 777 /opt/cumbox
wget https://assets.checkra.in/downloads/linux/cli/arm/d751f4b245bd4071c571654607ca4058e9e7dc4a5fa30639024b6067eebf5c3b/checkra1n -O /opt/cumbox/checkra1n
chmod +x /opt/cumbox/checkra1n
cp 01-cumbox.rules /etc/udev/rules.d
