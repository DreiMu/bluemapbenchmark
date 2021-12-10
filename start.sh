#java -Xmx90g -Xms10g -jar paper-1.18.1-68.jar nogui

#XMX=90g
#XMS=10g
XMX=4g
XMS=4g

if [ ! -s "./OpenJDK17U-jdk_x64_linux_hotspot_17.0.1_12.tar.gz" ];
then
wget "https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.1%2B12/OpenJDK17U-jdk_x64_linux_hotspot_17.0.1_12.tar.gz"
tar -xvzf "./OpenJDK17U-jdk_x64_linux_hotspot_17.0.1_12.tar.gz"
fi

mkdir ./server
cp ./paper-1.18.1-68.jar ./server/server.jar
cp -r ./plugins ./server
cd ./server

../jdk-17.0.1+12/bin/java -Xmx$XMX -Xms$XMS -Dcom.mojang.eula.agree=true -jar ./server.jar nogui


