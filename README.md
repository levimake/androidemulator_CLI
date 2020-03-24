# Create an Android Emulator From Command Line

We lets you create an android emulator using commandline tools without Android Studio. You are expected to work with a Linux based operating system. Kickstart your app development on react native or flutter on your favorite IDE if you don't prefer Android Studio.

## Dependencies
- Install Java
#### Ubuntu, Linux Mint and other derivatives
```sh
sudo apt install openjdk-8-jre openjdk-8-jdk
```
#### ArchLinux, Manjaro
```sh
sudo pacman -S jdk-openjdk
```
  
## Run the Script
```sh
git clone https://github.com/levimake/androidemulator_CLI.git
cd androidemulator_CLI
./install_avd.sh
# cleanup
cd ..
rm -rf androidemulator_CLI
```


Choose the platform version of your choice when prompted.

### Starting the Emulator
```sh
cd ~
Android/Sdk/emulator/emulator -avd Pixel
```

### Tweaking the Emulator
```sh
nano ~/.android/avd/Pixel.avd/config.ini
#Add these lines
PlayStore.enabled = true
hw.keyboard = yes
#Modify other settings too
```

### Uninstalling Everything
```sh
cd ~
rm -rf Android
rm -rf .android
```

