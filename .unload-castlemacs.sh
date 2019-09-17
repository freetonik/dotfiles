#!/bin/bash

cd ~

echo "Deleting elpa and melpa packages"
rm -rf ~/.emacs.d/elpa/*

echo "Unloading Castlemacs"
mv .emacs.d ~/code/castlemacs

echo "Setting old emacs.d dir"
mv .emacs.d.bak .emacs.d

echo "Done!"
