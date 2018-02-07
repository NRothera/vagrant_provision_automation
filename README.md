
## Downloads

### Virtual Box

Go to https://www.virtualbox.org/wiki/Downloads. Virtual Box is what will contain the virtual machine environment.

Find the right download for your machine and follow the instructions.

### Vagrant

 Go to https://www.vagrantup.com/downloads.html Vagrant is the tool in which you will be manipulating your virtual environment.

 Find the right download for your machine and follow the instructions.


## Use App

Clone the repo, cd into the folder.

In your terminal run

```bash
vagrant up
```
This will run the virtual environment. Go to dev.local to view the server.

Testing Webhook

change



 <!-- ## Setting up Environment

 cd into the folder where you will be working with your virtual environment. Run ``` vagrant init ubuntu/xenial64 ``` to initialise vagrant.

 Run
 ```
 vagrant up
 ```
 in your terminal. This will create your virtual environment.

 ```
 vagrant ssh
 ```
 This command takes you to your virtual environment

 Once here you will want to run
 ```
 sudo apt-get update -y
 ```
 in order to make sure your environment is up to date.

To view our server we have used nginx as our proxy server.
 In vagrant, run
```bash
sudo apt-get install nginx -y
```
to  install nginx.

```exit``` to return to host.

Nginx gives us a default ip address, however if you want to configure this, inside of your vagrant file you can add the following line

```ruby
config.vm.network "private_network", ip: "192.168.10.100"
```
Run
```bash
vagrant reload
```
to make this change without destroying your environment.

You may want to create a localhost with a more appropriate name. Vagrant has a plugin that allows you choose the name of your url.

In your terminal run
```bash
vagrant plugin install vagrant-hostsupdater
```
In your Vagrant file you can use this line of code
```ruby
config.hostsupdater.aliases = ["urlname"]
```
and choose the name of the url. -->





Read me changes









<!--  -->
