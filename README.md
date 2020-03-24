# Create an Android Emulator From CommandLine

We lets you create an android emulator using commandline tools without Android Studio. You are expected to work with a Linux based operating system. We provides you two modes of installation.

  - Automatic (Creates an emulator on the latest Android API)
  - Manual (You may select the version of the reqd tools)

## Manual Installation

### Creating the directories
```sh
cd ~
mkdir Android && mkdir Android/Sdk
```

### Getting the Android and SDK Command Line Tools

You may replace those urls with the latest version of the files from the Android's official website.

```sh
wget 'https://dl.google.com/android/repository/commandlinetools-linux-6200805_latest.zip'
unzip commandlinetools-linux-6200805_latest.zip && rm commandlinetools-linux-6200805_latest.zip
wget 'https://dl.google.com/android/repository/platform-tools-latest-linux.zip'
unzip platform-tools-latest-linux.zip && rm platform-tools-latest-linux.zip
```
### Creating Env Variables

```
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
```

### Getting the SDK Images

```sh
touch ~/.android/repositories.cfg
cd tools/bin/
./sdkmanager --sdk_root=${ANDROID_HOME} "tools"
cd ~/Android/Sdk/tools/bin
./sdkmanager --licenses
```
Accept all licenses

### Download the SDK Image

```
./sdkmanager "system-images;android-R;google_apis_playstore;x86_64"
```

### Creating the emulator

```
avdmanager create avd -n Pixel -k "system-images;android-R;google_apis_playstore;x86_64" --device 'pixel'

```

....
Todo: remaining commands, auto-installer script