#!/bin/bash

cd ~
echo "Backing up .emacs.d"
mv .emacs.d .emacs.d.bak

echo "Loading Castlemacs"
mv ~/code/castlemacs .emacs.d

echo "Done!"

