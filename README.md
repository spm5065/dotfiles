# dotfiles
These are my dotfiles, take them if you want I guess...

## Usage
1.  `git clone <URL>/dotfiles.git`  
1.  `cd dotfiles`:  
1.  `git submodule update --init --remote`  
1.  `vim .gituserconfig` add the following lines
    1.  `[user]`
        1.  `name = <Name>`
        1.  `email = <email>`
1.  `ln -s dotfiles/<file or directory> ~/<file or directory>` # Link everything so it is used, and updates on pull  
    1.  Note: You probalbly shouldn't link the `.config` directory. Link the directories inside it. Otherwise all the stuff from your local directory will pollute this repo

## Better Usage
1.  Fork the repo so you have your own copy  
1.  Edit the gitconfig in your fork  
1.  Commit and push the changes  
1.  Clone and do the above, but with your fork  

This will allow you to merge in my changes, and not have to change the username each time

