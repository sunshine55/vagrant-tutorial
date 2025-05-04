# Vagrant VMs Setup for Local Development

Demonstrate remote development practices on virtual machines to avoid messing up host machine evironment.

Vagrant templates for remote development with virtual machines:

* `k8s-cluster`: example to simulate kubernetes cluster with virtualboxes
* `mongodb`: example to setup mongodb with docker within virtualbox
* `localdev`: examples of different localhost development environments (java, python...)

`Vagrantfile` in root folder: setup simple machine with git default to provision other machines

* Implement ansible to provisioning localhost environment in another folder
* After successful setup virtual machine, copy the setup boilerplate into this repo
* startup root folder (to use Git) and commit the boilerplate provisioning

VSCode is only tool need to install on host machine, other works are done via guest machines

```
# Start
vagrant up

# Copy info into ssh_config or .ssh/config for VSCode remote development
vagrant ssh-config

# Given .ssh keys were generated for Github account and put in this root folder (ignored when pushing to Github)
vagrant ssh
cp /vagrant/.ssh ~/.ssh
chmod -R 700 ~/.ssh
```
