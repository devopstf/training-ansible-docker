## DevOps Training Setup - Docker

Issuing a simple ``docker-compose up -d`` you will bring up a three node cluster based on ``Ubuntu 16.04`` base image. The image we use is built from the ``Dockerfile``you can find into this folder.

### Port numbers mapping

The the Ubuntu boxes are running a SSH daemon, mapping the ``22`` SSH default port number against ``2211``, ``2222``, and ``2233`` ports on the host; as well as the port number ``80/TCP`` into ``8081``, ``8082``, and ``8083`` host's ports.

### Volumes

There is a volume ``/projects/ansible`` bind-mounted against the working directory ``./ansible`` intended for the **Ansible HOL**.

### Networks

The three boxes are connected to the same ``devops``network that is defined within the docker-compose script itself.

## _Ansible_ Hands-On Lab (HOL)

We include here a simple Ansible config file, ``ansible.cfg``, the inventory containing the three nodes defined for this setup, and a sample playbook based on one single Ansible role.

### Getting into the containers

You can either use the publised ports for getting into the Ububtu running boxes...

```
ssh -p [2211|2222|2233] devopsman:devopsman@localhost
```
... or executing an interactive container bash

```
docker container exec -it devopsbox-[01|02|03] bash
```
