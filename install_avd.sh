#!/bin/bash

echo -n "Creating The Directories"
mkdir Android && mkdir Android/Sdk
cd Android/Sdk

echo -n "Getting Commandline Tools"
wget 'https://dl.google.com/android/repository/commandlinetools-linux-6200805_latest.zip'
unzip commandlinetools-linux-6200805_latest.zip && rm commandlinetools-linux-6200805_latest.zip

echo -n "Getting Platform Tools"
wget 'https://dl.google.com/android/repository/platform-tools-latest-linux.zip'
unzip platform-tools-latest-linux.zip && rm platform-tools-latest-linux.zip

echo  "Creating Env Variables"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


cd tools/bin/
./sdkmanager --sdk_root=${ANDROID_HOME} "tools"
cd ~/Android/Sdk/tools/bin

echo -n "Accept all the licenses"
./sdkmanager --licenses

echo
echo
echo
echo -n "Creating repositories.cfg file"
touch ~/.android/repositories.cfg

echo -n "Choose the platform version ( 27, 28, 29, Q, R) : "
read platform_ver

echo
echo
echo
echo
echo -n "Geting the SDK Image"
./sdkmanager "system-images;android-$platform_ver;google_apis_playstore;x86_64"

echo
echo
echo
echo
echo
echo -n "Creating the emulator"
./avdmanager create avd -n Pixel -k "system-images;android-$platform_ver;google_apis_playstore;x86_64" --device 'pixel'

echo -n "Quick Fix"
cd ~/Android/Sdk && mkdir platforms

echo
echo
echo
echo
cd ~
echo -n "Installation Completed"
echo
echo
echo
echo
echo
echo -n "You may start the emulator from home directory by running the command Android/Sdk/emulator/emulator -avd Pixel"
echo
echo
echo
