��    .      �      �      �  	   �               -     >     N     Z  V   j     �     �  &   �  !     1   #  #   U  ?   y  -   �  /   �  #         ;  $   \  <   �     �  *   �  }     .   �     �  .   �     �          :     N      `     �     �     �      �     �  ,        :  1   T     �     �     �  
   �  .   �  �  �  	   �
     �
     �
     �
     	          %  V   5     �     �  &   �  !   �  1   �  #      ?   D  -   �  /   �  #   �        $   '  <   L     �  *   �  }   �  .   L     {  .   �     �     �                +     L     d           �     �  ,   �       1        Q     Y     x  
   �  .   �   -> REBOOT ./configure ``local alexdb alex md5`` cd /Vagrant/envs cd /media/cdrom cd /vagrant cd Python-2.7.8 https://www.digitalocean.com/community/tutorials/how-to-install-neo4j-on-an-ubuntu-vps make mkdir /vagrant/envs source /vagrant/envs/alex/bin/activate sudo -H pip install pip --upgrade sudo -u postgres createdb -O alex -E UTF-8 alexdb sudo -u postgres createuser -P alex sudo -u postgres pg_createcluster 9.3 main --locale=de_DE.UTF-8 sudo -u postgres pg_ctlcluster 9.3 main start sudo -u postgres pg_dropcluster --stop 9.3 main sudo /etc/init.d/postgresql restart sudo apt-get build-dep python2.7 sudo apt-get install build-essential sudo apt-get install build-essential python-dev checkinstall sudo apt-get install dkms sudo apt-get install language-pack-de-base sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev sudo apt-get install linux-headers-$(uname -r) sudo apt-get install postgresql sudo apt-get install postgresql-server-dev-9.3 sudo apt-get install python-pip sudo apt-get install unzip sudo apt-get update sudo make install sudo mount /dev/dvd /media/cdrom sudo pip install Sphinx sudo pip install mercurial sudo pip install psycopg2 sudo sh ./VBoxLinuxAdditions.run sudo vi /etc/default/locale:: sudo vi /etc/postgresql/9.3/main/pg_hba.conf tar -xvf Python-2.7.8.tgz update guest additions ubuntu vagrant virtual box vagrant vagrant init "ubuntu/trusty64" vagrant ssh vagrant up virtualenv --python=/usr/local/bin/python alex Project-Id-Version: ALeX
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-11-04 17:22+0000
PO-Revision-Date: 2015-11-04 19:14+0000
Last-Translator: Wolfgang Doll <wolfgang.doll@web.de>
Language-Team: Slovenian (http://www.transifex.com/alpine-explorer/al-ex/language/sl/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: sl
Plural-Forms: nplurals=4; plural=(n%100==1 ? 0 : n%100==2 ? 1 : n%100==3 || n%100==4 ? 2 : 3);
 -> REBOOT ./configure ``local alexdb alex md5`` cd /Vagrant/envs cd /media/cdrom cd /vagrant cd Python-2.7.8 https://www.digitalocean.com/community/tutorials/how-to-install-neo4j-on-an-ubuntu-vps make mkdir /vagrant/envs source /vagrant/envs/alex/bin/activate sudo -H pip install pip --upgrade sudo -u postgres createdb -O alex -E UTF-8 alexdb sudo -u postgres createuser -P alex sudo -u postgres pg_createcluster 9.3 main --locale=de_DE.UTF-8 sudo -u postgres pg_ctlcluster 9.3 main start sudo -u postgres pg_dropcluster --stop 9.3 main sudo /etc/init.d/postgresql restart sudo apt-get build-dep python2.7 sudo apt-get install build-essential sudo apt-get install build-essential python-dev checkinstall sudo apt-get install dkms sudo apt-get install language-pack-de-base sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev sudo apt-get install linux-headers-$(uname -r) sudo apt-get install postgresql sudo apt-get install postgresql-server-dev-9.3 sudo apt-get install python-pip sudo apt-get install unzip sudo apt-get update sudo make install sudo mount /dev/dvd /media/cdrom sudo pip install Sphinx sudo pip install mercurial sudo pip install psycopg2 sudo sh ./VBoxLinuxAdditions.run sudo vi /etc/default/locale:: sudo vi /etc/postgresql/9.3/main/pg_hba.conf tar -xvf Python-2.7.8.tgz update guest additions ubuntu vagrant virtual box vagrant vagrant init "ubuntu/trusty64" vagrant ssh vagrant up virtualenv --python=/usr/local/bin/python alex 