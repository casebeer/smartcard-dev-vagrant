#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

function quietly_install {
	aptitude install -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" $@
}

aptitude update -q

quietly_install openjdk-7-jdk ant
quietly_install unzip

