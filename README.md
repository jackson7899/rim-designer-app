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