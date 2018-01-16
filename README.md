## DevOps Training Setup

This repo is intended for seting up a three hosts cluster for training purposes.
It has been designed as an exercise for practicing with ``ansible`` and ``docker``.

**It includes two options:**

* The first one consists of three CentOS 7 boxes built using ``vagrant`` and 
provisioned via ``ansible local provisioner`` on top of ``Oracle VirtualBox``.
* The second one is built using ``docker`` and ``compose``. This time the boxes are 
based on Ubuntu 16.04.

The setup has been tested using two different environments:

**Mac OS X 10.11.6**

* **Docker 17.12.0-ce** (_Docker for Mac_)
* **VirtualBox 5.1.30**
* **Vagrant 2.0.1**
    - ``vagrant-cachier --plugin-version 1.2.1``
    - ``vagrant-hostmanager --plugin-version 1.8.7``
    - ``vagrant-vbguest --plugin-version 0.15.1``
    - ``vagrant-share --plugin-version 1.1.9``
    - ``vagrant-timezone --plugin-version 1.2.9``

**Windows 7 Enterprise**

* **Docker 17.12.0-ce** (_Docker Machine_ & _Docker Toolbox_)
* **VirtualBox 5.0.24**
* **Vagrant 1.8.4**
    - ``vagrant-cachier --plugin-version 1.2.1``
    - ``vagrant-vbguest --plugin-version 0.12.0``
    - ``vagrant-proxyconf --plugin-version 1.5.2``
    - ``vagrant-hostmanager --plugin-version 1.8.5``
    - ``vagrant-timezone --plugin-version 1.1.0``