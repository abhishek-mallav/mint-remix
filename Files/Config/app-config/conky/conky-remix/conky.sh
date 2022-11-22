#!/bin/bash

killall conky

cd ~/.config/conky/conky-remix
conky -c conky.conf
