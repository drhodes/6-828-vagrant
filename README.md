Getting Started
----

6.828 is an operating systems course at MIT.  This project is not
affiliated with MIT in any way.  This git repo keeps a vagrant
configuration that makes setting up the environment easier.

You'll need vagrant. Which version? Not sure.

    $ vagrant --version
    Vagrant 2.1.5

So, 2.1.5 works.

```bash
$ git clone "git@github.com:drhodes/6-828-vagrant.git"
$ cd 6-828-vagrant
$ vagrant up 
```

Depending on the speed of your network, it's going to take about 15
minutes with fast internet and a decent desktop. Vagrant has to grab
an ubuntu disk image, download some packages and build qemu. When
vagrant is done,

    6-828-vagrant$ vagrant ssh
    
    ... logging in ...
    
    vagrant@6828:~$ ls
    qemu  qemu-build  to-lab-1.txt

to-lab-1.txt contains the link to the first lab of 6.828.
