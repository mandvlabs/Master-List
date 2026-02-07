# Master List

A simple Android list management application built for deployment on Google Play Console.

## Project Information

- **Application ID**: `com.mandvlabs.masterlist`
- **Version Code**: 1
- **Version Name**: 1.0
- **Minimum SDK**: 24 (Android 7.0)
- **Target SDK**: 34 (Android 14)
- **Compile SDK**: 34

## Building the App

### Prerequisites
- Java JDK 8 or higher
- Gradle 7.0 or higher
- Android SDK with API Level 34

### Build Commands

**Debug Build:**
```bash
./gradlew assembleDebug
```

**Release Build:**
```bash
./gradlew assembleRelease
```

**Build App Bundle (AAB) for Play Console:**
```bash
./gradlew bundleRelease
```

## Play Console Deployment Checklist

This app is ready for internal testing deployment with the following requirements met:

- [x] Valid Android project structure
- [x] Proper package name (com.mandvlabs.masterlist)
- [x] Version code and version name configured
- [x] Target SDK 34 (meets Play Store requirements)
- [x] App icons for all densities
- [x] ProGuard/R8 enabled for release builds
- [x] Proper AndroidManifest configuration
- [x] Material Design theme

### Before Deploying to Play Console

1. **Generate a release keystore** (if not already done):
   ```bash
   keytool -genkey -v -keystore release-key.keystore -alias master-list -keyalg RSA -keysize 2048 -validity 10000
   ```

2. **Configure signing in `app/build.gradle`**:
   - Add signing configuration with your keystore details
   - Update the release build type to use the signing config

3. **Build the signed release AAB**:
   ```bash
   ./gradlew bundleRelease
   ```

4. **Upload to Play Console**:
   - Go to Google Play Console
   - Create a new app or select existing
   - Navigate to Internal Testing track
   - Upload the AAB from `app/build/outputs/bundle/release/app-release.aab`
   - Fill in required store listing information
   - Add testers via email list or Google Group

## Features

- Simple list management interface
- Material Design UI
- Android 7.0+ compatibility

## License

This project is maintained by mandvlabs.