obm-unattended-installer
========================

This project aims at providing Vagrant + Ansible recipes to build OBM instances.

Required dependencies
========================

* vagrant 1.3.5
* ansible 1.1
* virtualbox
* a 64 bits computer

How to use it ?
========================

It's usual vagrant stuff : just fetch the source code and run 
`vagrant up [debian|centos]` (default is CentOS), take a coffee break (a small
one for Debian, a big one for CentOS, you can even clean the coffee machine if
you run both), and you get a fresh OBM instance running.

You can then connect to it at `https://<youripaddress>/`

What do you get ?
========================

* a Debian Wheezy 64 bits or a CentOS 6 64 bits
* OBM 2.6 preview version

