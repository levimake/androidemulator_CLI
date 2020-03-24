# Create an Android Emulator From Command Line

We lets you create an android emulator using commandline tools without Android Studio. You are expected to work with a Linux based operating system. We provides you two modes of installation.

  - Automatic (Creates an emulator on the latest Android API)
  - Manual (You may select the version of the reqd tools)
  
## Automatic Installation
```
curl -L https://github.com/levimake/androidemulator_CLI/blob/master/install_R.sh | sh
```

### Starting the Emulator
```
cd ~
Android/Sdk/emulator/emulator -avd Pixel
```

