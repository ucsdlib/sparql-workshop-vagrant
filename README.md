# SPARQL Workshop
SPARQL Workshop Vagrant Virtual Machine 

## Requirements

* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)

## Usage

1. `git clone https://github.com/ucsdlib/sparql-workshop-vagrant.git`
2. `cd sparql-workshop-vagrant`
3. `vagrant up`

You can shell into the machine with `vagrant ssh` or `ssh -p 2222 vagrant@localhost`

## Environment

* Ubuntu 14.04 64-bit machine with: 
  * [Tomcat 7](http://tomcat.apache.org) at [http://localhost:8080](http://localhost:8080)
  * [Fuseki 2.3.0](http://jena.apache.org/documentation/fuseki2/) at [http://localhost:8080/fuseki](http://localhost:8080/fuseki), for querying and updating.
    * Installed in "/etc/fuseki"
    * Dataset Path name "/test"
    * Persistent storage "/etc/fuseki/databases/test\_data"
  * [Jena 3.0.0](https://jena.apache.org/documentation/tools/)

###Usage

* Install Vagrant and VirtualBox
* Clone this repository 
* `cd sparql-workshop-vagrant`
* `vagrant up`

## Support

If you receive the following error:
```
There are errors in the configuration of this machine, Please fix the following errors and try again:

vm:
* The box 'ubuntu/trusty64' could not be found.
```

Edit the file **Vagrantfile**, find the lines:
```
# Below needed for Vagrant versions < 1.6.x
# config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
```
and un-comment the **config.vm.box\_url** line, save the file and retry.

## Windows Troubleshooting

If you receive errors involving `\r` (end of line):

Edit the global `.gitconfig` file, find the line:
```
autocrlf = true
```
and change it to
```
autocrlf = false
```
Remove and clone again. This will prevent windows git clients from automatically replacing unix line endings LF with windows line endings CRLF.

## Thanks

This VM setup was heavily influenced (read: stolen) from [Fedora 4 Vagrant](https://github.com/fcrepo4-exts/fcrepo4-vagrant).
