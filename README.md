
Download the 
[Java Card SDK for Linux, v2.2.2](http://www.oracle.com/technetwork/java/javasebusiness/downloads/java-archive-downloads-javame-419430.html#java_card_kit-2.2.2-oth-JPR)
from Oracle. 

Place the `java_card_kit-2_2_2-linux.zip` file in this directory.

Then run

    vagrant up

### Software list

- OpenJDK 7 and ant
- The Java Card Development Kit, v2.2.2
- gpshell 
- PCSClite, pcscd, and pcsc-tools
- OpenSC 
- gnupg2 (with smart card daemon)
- Pyscard Python module

### Machine configuration

- Ubuntu 12.04 Precise AMD64
- VirtualBox mappings for a few USB smart card readers – you'll probably want to add 
  entries for whatever readers you have on hand. 

### Notes

- https://wiki.ubuntu.com/LucidLynx/ReleaseNotes/Java6Transition
- http://www.alexander-petric.com/2011/08/javacard-development-ubuntu-10-10.html
- Javacard development presentation – http://www.slideshare.net/ssusered0e6d/con1160
- USB smartcard reader on Vagrant VBox – http://spin.atomicobject.com/2014/03/21/smartcard-virtualbox-vm/
- Installing GPShell – http://www.alexander-petric.com/2011/08/javacard-compiling-and-installing-an-applet.html

