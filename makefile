.PHONY: help
.DEFAULT_GOAL := help

carga-box: ## getting the right updated vagrant box
	@vagrant box add virtualbox-centos7minimal.box http://ic.es.atos.net/devops/images_atlas/virtualbox-centos7.box

install-plugins: ## installing required vagrant plugins
	@vagrant plugin install vagrant-cachier --plugin-version 1.2.1
	@vagrant plugin install vagrant-vbguest --plugin-version 0.12.0
	@vagrant plugin install vagrant-proxyconf --plugin-version 1.5.2
	@vagrant plugin install vagrant-hostmanager --plugin-version 1.8.5
	@vagrant plugin install vagrant-timezone --plugin-version 1.1.0

vagrant-up: ## getting the vagrant machine up&running
	@vagrant up

vagrant-up-ura: ## getting the vagrant machine up&running behind an URA connection
	@export URA=true && vagrant up

provision: ## provision the server
	@export ANSIBLE_CONFIG=./ansible/ansible.cfg && ansible-playbook -i ./ansible/inventory ./ansible/playbook.yml


help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
