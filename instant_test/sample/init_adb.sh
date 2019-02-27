# start adb
adb start-server
# remote host ip: vEthernet's IPV4 address
java -jar /root/adbportforward.jar client adblocation=`which adb` remotehost=172.20.8.81 port=5037 &
