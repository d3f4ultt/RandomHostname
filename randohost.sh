btc=$(cat /etc/hostname)
eth=$(tr -dc 'A-Z0-9' < /dev/urandom | head -c12)
sed -i "s/$btc/$eth/g" /etc/hosts
sed -i "s/$btc/$eth/g" /etc/hostname
hostname "$eth"
service network-manager start
exit 0
#sudo cp randohost.sh /etc/init.d/randohost.sh
#sudo chmod +x /etc/init.d/randohost.sh
#sudo update-rc.d randohost.sh defaults
