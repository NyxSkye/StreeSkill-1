# StreeSkill - Setup Guide

## Quick Setup (5 Minutes)

### Step 1: Verify Flutter Installation
```bash
flutter doctor
```
Ensure all checkmarks are green for your target platform.

### Step 2: Get Dependencies
```bash
flutter pub get
```

### Step 3: Run the App
```bash
# Android
flutter run

# iOS (Mac only)
flutter run -d ios

# Web (for quick demo)
flutter run -d chrome
```

---

## Detailed Setup Instructions

### For Windows Users

1. **Install Flutter**
   - Download from: https://flutter.dev/docs/get-started/install/windows
   - Extract to `C:\src\flutter`
   - Add to PATH: `C:\src\flutter\bin`

2. **Install Android Studio**
   - Download from: https://developer.android.com/studio
   - Install Android SDK and emulator
   - Create a virtual device (Pixel 5, API 33+)

3. **Setup Project**
   ```cmd
   cd path\to\streeskill
   flutter pub get
   flutter run
   ```

### For Mac Users

1. **Install Flutter**
   ```bash
   brew install flutter
   ```

2. **Install Xcode** (for iOS)
   - Download from App Store
   - Run: `sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer`
   - Run: `sudo xcodebuild -runFirstLaunch`

3. **Setup Project**
   ```bash
   cd path/to/streeskill
   flutter pub get
   flutter run
   ```

### For Linux Users

1. **Install Flutter**
   ```bash
   sudo snap install flutter --classic
   ```

2. **Install Android Studio**
   ```bash
   sudo snap install android-studio --classic
   ```

3. **Setup Project**
   ```bash
   cd path/to/streeskill
   flutter pub get
   flutter run
   ```

---

## Troubleshooting

### Issue: "Flutter not found"
**Solution**: Add Flutter to your PATH
```bash
# Windows (PowerShell)
$env:Path += ";C:\src\flutter\bin"

# Mac/Linux
export PATH="$PATH:`pwd`/flutter/bin"
```

### Issue: "No devices found"
**Solution**: Start an emulator
```bash
# List available emulators
flutter emulators

# Launch emulator
flutter emulators --launch <emulator_id>
```

### Issue: "Gradle build failed"
**Solution**: Clean and rebuild
```bash
flutter clean
flutter pub get
flutter run
```

### Issue: "Video player not working"
**Solution**: Ensure you have internet connection for demo video URLs

### Issue: "Dependencies error"
**Solution**: Update dependencies
```bash
flutter pub upgrade
flutter pub get
```

---

## Running on Physical Device

### Android
1. Enable Developer Options on your phone
2. Enable USB Debugging
3. Connect via USB
4. Run: `flutter run`

### iOS (Mac only)
1. Connect iPhone via USB
2. Trust computer on device
3. Open Xcode and sign the app
4. Run: `flutter run`

---

## Build for Production

### Android APK
```bash
flutter build apk --release
```
Output: `build/app/outputs/flutter-apk/app-release.apk`

### iOS App (Mac only)
```bash
flutter build ios --release
```
Then archive in Xcode for App Store submission.

### Web
```bash
flutter build web
```
Output: `build/web/`

---

## Development Tips

### Hot Reload
Press `r` in terminal while app is running to hot reload changes.

### Hot Restart
Press `R` in terminal for full restart.

### Debug Mode
```bash
flutter run --debug
```

### Release Mode
```bash
flutter run --release
```

### Check Performance
```bash
flutter run --profile
```

---

## IDE Setup

### VS Code
1. Install Flutter extension
2. Install Dart extension
3. Open project folder
4. Press F5 to run

### Android Studio
1. Install Flutter plugin
2. Install Dart plugin
3. Open project
4. Click Run button

---

## Project Structure
```
streeskill/
├── lib/
│   ├── main.dart              # App entry point
│   ├── models/                # Data models
│   ├── providers/             # State management
│   ├── screens/               # UI screens
│   └── widgets/               # Reusable components
├── assets/                    # Images, fonts
├── android/                   # Android config
├── ios/                       # iOS config
├── pubspec.yaml              # Dependencies
└── README.md                 # Documentation
```

---

## Need Help?

1. Check Flutter documentation: https://flutter.dev/docs
2. Review error messages carefully
3. Run `flutter doctor -v` for detailed diagnostics
4. Check the MID_HACKATHON_DEMO.md for feature details

---

**Ready to Demo!** 🚀

Once setup is complete, the app should launch with the splash screen and you can navigate through all features.
