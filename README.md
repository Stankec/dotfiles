# Infinum dotfiles repository

This repository contains the default configurations for some of the software we use here at Infinum.

Dotfiles are text-based configuration files, mostly for CLI tools.

To manage the dotfiles, we are using [dotbot](https://github.com/anishathalye/dotbot).

# Installing

To install the dotfiles, first clone the repo:

    git clone git@bitbucket.org:infinum_hr/dotfiles.git ~/dotfiles

Then run the install script:

    cd ~/dotfiles && ./install

# Modifying

To modify the dotfiles, clone the repo if you don't have it already, then make the changes you want and push them to the repo.

You are free to modify the repo, however, consulting other people who use the dotfiles before making any changes is encouraged.

# Customising

The preferred way of customizing dotfiles is to maintain your own fork of this repository. This will ensure that we have a standardized environment
for new employees, with wich all the current employees should be already familiar and comfortable.

# Updating

To update your dotfiles, do a git pull in your local copy of the repository:

    git pull

and then run the install script again:

    ./install
