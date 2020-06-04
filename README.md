# prayer_timetable

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# icci

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Flutter channels

flutter channel stable
flutter channel beta
flutter channel master

flutter upgrade

# Flutter run

flutter run --profile
flutter run --release
flutter run --profile -d 'LLD L31'
flutter run --release -d 'LLD L31'
flutter run --profile -d "Ensar's iPhone 11"
flutter run --release -d "Ensar's iPhone 11"

# Flutter packages

flutter packages get
flutter --no-color upgrade
flutter doctor --verbose

### (upgrade packages)

flutter pub upgrade

### (or)

flutter packages upgrade

# Flutter build

## (android: release bundle)

flutter build appbundle

## (android: release apk) (The flutter build command defaults to --release.)

flutter build apk --split-per-abi
flutter build apk --release --target-platform=android-arm64

(Removing the --split-per-abi flag results in a fat APK that contains your code compiled for all the target ABIs. Such APKs are larger in size than their split counterparts, causing the user to download native binaries that are not applicable to their device’s architecture.)

### (build android directly)

cd android
.\gradlew app:build --stacktrace

## (ios build)

flutter build ios

### (windows android emulator cold boot)

emulator -list-avds
C:\Users\ensar\scoop\apps\android-sdk\current\emulator\emulator.exe -avd Nexus_6P_API_27 -no-snapshot-load

### clean

flutter clean

## ios pods

cd ios
pod init
pod install

### XCODE release production/dev => Product > Scheme > Edit Scheme

flutter pub get?

# WEB

### Add web support to an existing app

flutter create .
flutter devices

### Enable and build/test

flutter config --enable-web
flutter build web
flutter run -d chrome

# Flutter Icons

flutter pub run flutter_launcher_icons:main
flutter pub run flutter_launcher_icons:main -f <your config file name here>

# run on mac

#? rm -rf ios/Flutter/App.framework
flutter channel master
flutter upgrade
flutter config --enable-macos-desktop
flutter create .
flutter run -d macOS
flutter build macos

# test background fetch

adb devices
adb -s FPMDU18124001349 shell cmd jobscheduler run -f ie.farend.prayer 999
adb -s FPMDU18124001349 logcat \*:S flutter:V, TSBackgroundFetch:V

# rebuild mobx generated files

flutter clean && flutter pub get && rm -rf lib/store/mobx/\*.g.dart
flutter clean ; flutter pub get ; Remove-Item lib/store/mobx/\*.g.dart -Recurse -Force
flutter packages pub run build_runner build

flutter packages pub run build_runner build --delete-conflicting-outputs
