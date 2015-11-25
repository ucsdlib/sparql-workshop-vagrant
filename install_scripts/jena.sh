echo "Installing Jena"

SHARED_DIR=$1

if [ -f "$SHARED_DIR/install_scripts/config" ]; then
  . $SHARED_DIR/install_scripts/config
fi

if [ ! -f "$DOWNLOAD_DIR/apache-jena-$JENA_VERSION-distribution.tar.gz" ]; then
  echo -n "Downloading Jena...."
  wget -q -O "$DOWNLOAD_DIR/apache-jena-$JENA_VERSION-distribution.tar.gz" "http://www.us.apache.org/dist/jena/binaries/apache-jena-$JENA_VERSION.tar.gz"
  echo " done"
fi

cd /tmp
cp "$DOWNLOAD_DIR/apache-jena-$JENA_VERSION-distribution.tar.gz" /tmp
tar -xzvf apache-jena-"$JENA_VERSION"-distribution.tar.gz
cp -R apache-jena-"$JENA_VERSION"/* $JENA_BASE

if [ -z "$JENAROOT" ]; then
  echo "Enabling Jena Command Line Tools"
  echo 'export JENAROOT=$JENA_BASE' >> /home/vagrant/.bashrc
  echo 'export PATH=$PATH:$JENAROOT/bin' >> /home/vagrant/.bashrc
fi
