### What is it?

A Vagrant configuration that starts up a Python 3 project in a virtual machine for local application development.

### Installation

First install [Vagrant] and [Virtual Box].

Then, run the following to create a new Python 3 app dev virtual machine:

### Usage

    # Start up the virtual machine:
    $ vagrant up

    # Stop the virtual machine:
    $ vagrant halt
	
	# Destroy the virtual machine:
	$ vagrant destroy
	
	#Export vagrant box
	$ vagrant package --vagrantfile Vagrantfile

### What does it do?

It creates a virtual server running Ubuntu 18.04 with the version of Python 3 installed. 
Edit the run.sh file to run Python app.

Once it has started up it will print out how to access virtual machine. 
It will look something like this:

    $ vagrant up
    Bringing machine 'default' up with 'virtualbox' provider...

    Admin access user via VM:
      vagrant ssh
	
	The local project directory is translated to the virtual machine directory /mnt/MyApp
	You can connect to Django via http on the default port 8000 (http://localhost:8000)
	
### If there was an error loading the vagrant box, run the command
	vagrant box add --insecure ubuntu/bionic64