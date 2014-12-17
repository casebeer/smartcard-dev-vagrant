#!/usr/bin/env bash

JCDK_VERSION=2_2_2

su - vagrant

HOME=~vagrant

cd $HOME

mkdir -p $HOME/javacard
cd $HOME/javacard

unzip -o "/vagrant/java_card_kit-${JCDK_VERSION}-linux.zip"
ls java_card_kit-${JCDK_VERSION}/java_card_kit-${JCDK_VERSION}-rr-*.zip | xargs -n 1 unzip -o

chmod +x $HOME/javacard/bin/*

cat >> $HOME/.profile <<EOF

export JAVA_HOME="/usr/lib/jvm/java-1.7.0-openjdk-amd64"

# add JCDK bin to PATH
export JC_HOME="\$HOME/javacard"
PATH="\$JC_HOME/bin:$PATH"

EOF

cd $HOME


