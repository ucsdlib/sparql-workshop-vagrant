###
# TOMCAT 7
###

# Tomcat
apt-get -y install tomcat7 tomcat7-admin
usermod -a -G tomcat7 vagrant

if ! grep -q "/usr/lib/jvm/java-8-oracle" /etc/default/tomcat7 ; then
  echo "JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> /etc/default/tomcat7
fi
