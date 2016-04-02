# Devstack-configuration

echo 1 > /proc/sys/net/ipv4/ip_forward
echo 1 > /proc/sys/net/ipv4/conf/eth0/proxy_arp
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

nova secgroup-add-rule default icmp -1 -1 0.0.0.0/0  (is used for PING)
nova secgroup-add-rule default tcp 22 22 0.0.0.0/0 (is used for SSH)