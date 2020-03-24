# Create an Android Emulator From Command Line

We lets you create an android emulator using commandline tools without Android Studio. You are expected to work with a Linux based operating system.

## Dependencies
- Install Java
#### Ubuntu, Linux Mint and other derivatives
```
sudo apt install openjdk-8-jre openjdk-8-jdk
```
#### ArchLinux, Manjaro
```
sudo pacman -S jdk-openjdk
```
  
## Run the Script
```
curl -L https://raw.githubusercontent.com/levimake/androidemulator_CLI/master/install_avd.sh | sh
```
Choose the platform version of your choice when prompted.

### Starting the Emulator
```
cd ~
Android/Sdk/emulator/emulator -avd Pixel
```

