vagrant
=======

* vagrant init "ubuntu/trusty64"
* vagrant up
* vagrant ssh
* sudo apt-get update


update guest additions ubuntu vagrant virtual box

* sudo apt-get install build-essential
* sudo apt-get install dkms
* sudo apt-get install linux-headers-$(uname -r)

-> REBOOT

Insert the VBoxGuestAdditions.iso CD file into your Linux guest's virtual CD-ROM drive
(Applications/VirtualBox.app/Contents/MacOS/VBoxGuestAdditions.iso)

* sudo mount /dev/dvd /media/cdrom
* cd /media/cdrom
* sudo sh ./VBoxLinuxAdditions.run

-> REBOOT

* sudo apt-get install language-pack-de-base

* sudo vi /etc/default/locale::

    LANG=en_US.UTF-8
    LANGUAGE=
    LC_CTYPE="de_DE.UTF-8"
    LC_NUMERIC="de_DE.UTF-8"
    LC_TIME="de_DE.UTF-8"
    LC_COLLATE="de_DE.UTF-8"
    LC_MONETARY="de_DE.UTF-8"
    LC_MESSAGES="POSIX"
    LC_PAPER="de_DE.UTF-8"
    LC_NAME="de_DE.UTF-8"
    LC_ADDRESS="de_DE.UTF-8"
    LC_TELEPHONE="de_DE.UTF-8"
    LC_MEASUREMENT="de_DE.UTF-8"
    LC_IDENTIFICATION="de_DE.UTF-8"
    LC_ALL=

* sudo apt-get install python-pip
* sudo -H pip install pip --upgrade

* mkdir /vagrant/envs
* cd /Vagrant/envs
* virtualenv --python=/usr/local/bin/python alex
* source /vagrant/envs/alex/bin/activate

* sudo pip install mercurial
* sudo pip install Sphinx

* sudo apt-get install unzip
* sudo apt-get install postgresql
* sudo apt-get install postgresql-server-dev-9.3
* sudo pip install psycopg2

* sudo -u postgres pg_dropcluster --stop 9.3 main
* sudo -u postgres pg_createcluster 9.3 main --locale=de_DE.UTF-8
* sudo -u postgres pg_ctlcluster 9.3 main start

* sudo -u postgres createuser -P alex
* sudo -u postgres createdb -O alex -E UTF-8 alexdb

* | sudo vi /etc/postgresql/9.3/main/pg_hba.conf
  | ``local alexdb alex md5``
  | Alle anderen Verbindungsmöglichkeiten (nicht Superuser) aus kommentieren.

* sudo /etc/init.d/postgresql restart

Update Python from 2.7.6 to Python 2.7.10

* sudo apt-get install build-essential python-dev checkinstall
* sudo apt-get build-dep python2.7
* sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
* cd /vagrant
* tar -xvf Python-2.7.8.tgz
* cd Python-2.7.8
* ./configure
* make
* sudo make install
