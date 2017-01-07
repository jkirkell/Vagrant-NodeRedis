# Vagrant Appitur Developer Workstation.

Simple vagrant script for creating a development environment for Appitur web and mobile applications.

Based from:
ubuntu/trusty64 box

Installs:

* Node.js v0.10.41
* Node.js v6.9.x (lts/boron)
* Redis 3.2.x (stable)

## Create Vagrant machine
```Bash
vagrant up
vagrant ssh
```
## Web App Development
```Bash
cd /vagrant/web
npm run dev
```
## Destroy Server
`vagrant destroy`
