# Vagrant Tutorial

Demonstrate Vagrant provisioning for local development with virtual machines

`Vagrantfile` in root folder: setup simple machine with git default to provision other machines

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