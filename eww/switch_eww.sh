#!/bin/bash
if [[ $(~/.local/bin/eww windows) == "*eww" ]]
then
   ~/.local/bin/eww close eww 
else
   ~/.local/bin/eww open eww 
fi
