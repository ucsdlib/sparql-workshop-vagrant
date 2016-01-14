# SPARQL Workshop
SPARQL Workshop Vagrant Virtual Machine

## Requirements

* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant Triggers Plugin](https://github.com/emyl/vagrant-triggers)
  * installation: `vagrant plugin install vagrant-triggers`
* (extra step for Windows users) [Fix line endings in Git](https://help.github.com/articles/dealing-with-line-endings/)
  * run: `git config --global core.autocrlf false`

## Usage

1. `git clone https://github.com/ucsdlib/sparql-workshop-vagrant.git`
2. `cd sparql-workshop-vagrant`
3. `vagrant up`

You can shell into the machine with `vagrant ssh` or `ssh -p 2222 vagrant@localhost`

## Environment

* Ubuntu 14.04 64-bit machine with:
  * [Fuseki 1.3.1](http://jena.apache.org/documentation/serving_data/index.html) at [http://localhost:3030](http://localhost:3030), for querying and updating.
    * Installed in `/usr/share/fuseki`
  * [Jena 3.0.1](https://jena.apache.org/documentation/tools/)
    * Installed in `/vagrant/jena`
    * Confirm by running `sparql --version`
  * Workshop files installed in `/vagrant/course_files`

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

Edit the global `.gitconfig` file by running the command:
```
git config --global core.autocrlf false
```
Remove and clone again. This will prevent windows git clients from automatically replacing unix line endings LF with windows line endings CRLF.

## Thanks

This VM setup was heavily influenced (read: stolen) from [Fedora 4 Vagrant](https://github.com/fcrepo4-exts/fcrepo4-vagrant).
