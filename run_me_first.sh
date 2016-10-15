#!/bin/bash

# TODO:
# DONE - check for ~/.bin directory; create if not present
# DONE - update ~/.bashrc and ~/.bash_profile
# - loop over scripts, creating links

if [[ -d "$HOME/.bin" ]]; then
    echo "$HOME/.bin already exists. nothing to do"
else
    echo "creating $HOME/.bin"
    mkdir $HOME/.bin
fi

DOTFILES=(.bash_profile .bashrc)
for FILE in ${DOTFILES[@]}; do
    if grep -q '$HOME/.bin' "$HOME/$FILE" ; then
        echo "$HOME/.bin is added to the PATH variable in $FILE already. nothing to do". 
    else
        echo "updating ~/$FILE to add $HOME/.bin to the PATH variable"
        echo 'export PATH="$PATH:$HOME/.bin"' >> "$HOME/$FILE"
    fi
done

SCRIPTS=(gis)
for SCRIPT in ${SCRIPTS[@]}; do
    if [[  -L "$HOME/.bin/${SCRIPT}" ]]; then
        echo "symlink for ${SCRIPT} is already present. nothing to do."
    else
        echo "creating a symlink for ${SCRIPT}"
        ln -s "$HOME/.custom_git/${SCRIPT}.sh" "$HOME/.bin/${SCRIPT}"
    fi
done
