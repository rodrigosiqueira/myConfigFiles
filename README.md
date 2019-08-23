# My precious .dotfiles and setup scripts

----
```
      _       _    __ _ _           
   __| | ___ | |_ / _(_) | ___  ___ 
  / _` |/ _ \| __| |_| | |/ _ \/ __|
 | (_| | (_) | |_|  _| | |  __/\__ \
(_)__,_|\___/ \__|_| |_|_|\___||___/
                                    

```

# Deploy from scratch

> Just run:

```
sudo ansible-playbook atma.yml
```

# Here's some of the project I'm involved/interested

```
ansible-playbook free_sw_project.yml
```

# Test Machine

When working with Linux Kernel or embedded systems, It is common to have a
target machine that we use for testing, which could be a simple VM or a real
device. In my case, I usually have a VM and a device for testing my code,
because of this, I added a set of playbooks intended to configure my test
machines.

> Note: I'll use TM(tm) as an acronyms for "Test Machine"

If you want to use this scripts, keep in mind that you have to update the
following files:

1. hosts
2. tm_graphics

If you want to deploy the configurations in your test machine, just use:

```
ansible-playbook tm_graphics.yml -i inventory
```

> Note: Remember that you have to configure the ssh in the target machine
