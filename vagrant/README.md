## DevOps Training Setup - Vagrant

This repo includes the ``Vagrantfile``script you need for bringing up a three-nodes cluster based on a Vagrant Cloud ``Centos 7`` box, and the ansible roles needed for their local provision process.

A simple script for generating SSH key pairs is included within ``scripsts``folder. Insecure key pairs we use for accessing the vagrant boxes are included within ``keys``folder.

The ``ansible``folder contains, on one hand the local provision script ``playbook.ml`` apart from the roles it needs and, in the other hand, the **Ansible HOL** assets for training purposes.

Issuing ``vagrant up``command will bring up the three CentOS boxes provisioned with ``ansible``, ``docker``, ``git``, and a few basic tools, and ``devopsman``user created as sudoer with no password.