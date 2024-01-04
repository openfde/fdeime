#!/bin/bash
sudo cp fdeime.xml /usr/share/ibus/component
echo "cp fdeime ok"
sudo pkill /usr/bin/ibus-fdeime
echo "pkill fdeime ok"
sudo cp ./build/fde_ime /usr/bin/ibus-fdeime
echo "cp fde_ime ok"
ibus-daemon -Rr
echo "ibus -Rr ok"
