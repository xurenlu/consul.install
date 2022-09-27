[ -d /etc/consul ] || mkdir /etc/consul/
[ -d /opt/consul ] || mkdir /opt/consul/
sudo cp ./etc/consul.* /etc/consul/
sudo wget -O /usr/bin/consul https://huasheng-resume.oss-cn-beijing.aliyuncs.com/consul
sudo cp ./conf/consul.conf /etc/supervisor/conf.d/
export IPIP=`hostname -I|tr " " "\n"|head -n 1`
sudo sed -i  "s/IPIP/${IPIP}/g" /etc/supervisor/conf.d/consul.conf
[ -d /var/log/consul/ ] || mkdir /var/log/consul/