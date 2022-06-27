#!/bin/bash

currMode=$(gsettings get org.gnome.desktop.interface color-scheme)

if [ $currMode = "'default'" ];
then
	mode="prefer-dark"
else
	mode="default"
fi
gsettings set org.gnome.desktop.interface color-scheme $mode
