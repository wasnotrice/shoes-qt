# Shoes-Qt

A Qt backend for [Shoes 4](http://github.com/shoes/shoes4).

## Prerequisites

Tested on 

- OS X 10.7, with rvm ruby 1.9.3-p125, and qt 4.8.1, installed via Homebrew.
- Ubuntu 11.10, with rvm ruby 1.9.3-p194, and qt 4.7.1, installed via apt-get.

These instructions assume that you have git installed, and ruby 1.9.3 installed via rvm.

### OS X


Install `qt`, clone the git repo, and install the `qtbindings` gem.

```
$ brew install qt cmake
$ git clone https://github.com/wasnotrice/shoes-qt.git
$ cd shoes-qt
$ gem install qtbindings
```

### Linux

These instructions are for Ubuntu. Modify as needed for your flavor.

Install `qt`, clone the git repo, and install the `qtbindings` gem.

```
$ sudo apt-get install libqt4-ruby libqt4-dev qt4-qmake cmake
$ git clone https://github.com/wasnotrice/shoes-qt.git
$ cd shoes-qt
$ gem install qtbindings
```

### Windows

Clone the repo, and install `qtbindings` (also installs `qt`).


```
> git clone https://github.com/wasnotrice/shoes-qt.git
> cd shoes-qt
> gem install qtbindings
```


### Using Shoes 4

Shoes 4 is not yet published as a gem. This repo contains the Shoes 4 repo as a submodule, though.
You can find it in the `shoes` directory. The rake tasks and `bin/shoes` include this directory already,
but if you need the Shoes 4 code, that's where it is.


### Verifying your setup

Try running

    $ bin/shoes samples/simple-app.rb

You should see a blank "Shoes 4" window.


## Testing

    $ rake spec:integration # Run the Shoes test suite with the Qt backend

