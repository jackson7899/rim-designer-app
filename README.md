# rim-designer-app
rim-designer-app/
├── client/                  # React Native frontend
│   ├── assets/              # Images, rim models, icons
│   ├── components/          # Reusable UI components
│   ├── screens/             # Main UI screens
│   ├── services/            # API calls, Firebase, etc.
│   ├── App.js               # App entry point
│   └── navigation/          # Stack/tab navigation
├── server/                  # Backend (Node.js or Firebase Functions)
│   ├── models/              # Data models (rim, car, user)
│   ├── routes/              # API endpoints
│   ├── controllers/         # Business logic
│   ├── config/              # Firebase, DB, and auth setup
│   └── index.js             # Server entry point
├── public_models/           # GLTF/GLB car and rim models
├── docs/                    # Architecture docs, diagrams, planning
├── .gitignore
├── README.md
├── package.json
└── firebase.json            # If using Firebase backend
# RimDesignerPro

**RimDesignerPro** is a React Native mobile application that allows users to design, customize, preview, and save custom automobile rim styles directly on a vehicle image.

## Features

- Choose from multiple rim styles and colors
- Preview rims on a sample vehicle
- Save and name custom designs locally
- Share rim designs via social media or messaging
- Dark mode support for seamless theming

## Installation

```bash
npm install
npx pod-install # (iOS only)
npm start
```

### Android

```bash
npx react-native run-android
```

### iOS

```bash
npx react-native run-ios
```

## Build APK (Android Studio)

1. Open the `/android` folder in Android Studio.
2. Connect your device or emulator.
3. Go to **Build > Build Bundle(s)/APK(s) > Build APK(s)**.
4. Locate the APK at `android/app/build/outputs/apk/debug/`.

## Build AAB for Google Play

1. Go to **Build > Generate Signed Bundle / APK > Android App Bundle**.
2. Use your keystore and select **release**.
3. Upload the `.aab` to the Play Console.

## Dependencies

- react-native-view-shot
- react-native-share
- react-native-firebase (optional for cloud saves)
- @react-navigation/native

## License

This project is for demonstration purposes and not licensed for commercial distribution. All rim and vehicle images are placeholders.

---
*Designed with customization in mind â RimDesignerPro puts creative control in the driverâs hands.*
