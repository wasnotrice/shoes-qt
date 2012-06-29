# Shoes-Qt

A Qt backend for [Shoes 4](http://github.com/shoes/shoes4).

## Prerequisites

Tested (so far) on OS X, with rvm ruby 1.9.3-p125, and qt 4.8.1, installed via Homebrew.

### OS X


Install `qt`, clone the git repo, and install the `qtbindings` gem.

```
$ brew install qt cmake
$ git clone https://github.com/wasnotrice/shoes-qt.git
$ cd shoes-qt
$ gem install qtbindings
```

Shoes 4 is not yet published as a gem, so we have to package the shoes
gem and install locally.

```
$ cd /path/to/shoes4/repo
$ rake package
$ cd /path/to/shoes-qt/repo
$ gem install /path/to/shoes4/repo/pkg/shoes-4.0.0.pre1.gem
```

### Verifying your setup

Try running

    $ bin/shoes samples/simple-app.rb

You should see a blank "Shoes 4" window.
