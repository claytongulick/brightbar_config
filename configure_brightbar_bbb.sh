npm install -g n
n stable
mkdir brightbar
cd brightbar
git clone https://github.com/claytongulick/brightbar .
cd node/hardware_client
npm install
echo "cd /root/brightbar/node/hardware_client; node app.js" > /var/lib/cloud9/autorun/brightbar.sh
chmod +x /var/lib/cloud9/autorun/brightbar.sh
read -p "Enter device id: " device
sed -i "s/id: 1/id: $device/g" /root/brightbar/node/hardware_client/env/default.js

