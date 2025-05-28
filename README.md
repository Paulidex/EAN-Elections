# EAN-Elections

EAN-Elections is an **Electronic Voting System** based on Android and developed with **Dart** (Flutter). This project aims to provide a secure, user-friendly, and efficient mobile platform for conducting elections. It is designed to serve both **voters** and **administrators** through dedicated panels, facilitating the voting process for communities, organizations, or small-scale electoral events.

## Overview

The system is divided into two main panels:

- **Voter Panel**: Allows users to register, securely log in, and easily cast their votes.
- **Admin Panel**: Provides tools to manage elections, add candidates, monitor election progress, and analyze results.

This project seeks to modernize traditional voting systems by leveraging mobile technology, making the process more accessible and transparent.

## Key Features

- **Dual Panels**: Separate interfaces specifically designed for voters and administrators.
- **Secure Authentication**: Registration and login to ensure voting integrity.
- **Election Management**: Creation and administration of elections, candidate registration, and real-time result tracking.
- **Intuitive UI**: Designed with Dart and Flutter’s modern UI components for a smooth user experience.
- **Firebase Integration (Planned)**: Using Firebase for authentication, cloud storage, and real-time synchronization.
- **Scalable and Adaptable**: Suitable for communities, organizations, or events seeking to digitize their voting process.

## Technologies Used

- **Dart & Flutter**: Primary language and framework for cross-platform mobile development.
- **Android Studio**: Integrated Development Environment to build and test the app.
- **Firebase (Planned)**: For user authentication, cloud storage, and real-time data synchronization.
- **SQLite / Firestore**: For local and cloud database management.
- **Android SDK**: To leverage native Android components and APIs.

## Project Structure

```plaintext
EAN-Elections/
├───.github
│   └───workflows
├───android
│   ├───.gradle
│   │   ├───8.12
│   │   │   ├───checksums
│   │   │   ├───expanded
│   │   │   ├───fileChanges
│   │   │   ├───fileHashes
│   │   │   └───vcsMetadata
│   │   ├───buildOutputCleanup
│   │   └───vcs-1
│   ├───app
│   │   └───src
│   │       ├───debug
│   │       ├───main
│   │       │   ├───kotlin
│   │       │   │   └───com
│   │       │   │       └───example
│   │       │   │           └───ean_elections
│   │       │   └───res
│   │       │       ├───drawable
│   │       │       ├───drawable-v21
│   │       │       ├───mipmap-hdpi
│   │       │       ├───mipmap-mdpi
│   │       │       ├───mipmap-xhdpi
│   │       │       ├───mipmap-xxhdpi
│   │       │       ├───mipmap-xxxhdpi
│   │       │       ├───values
│   │       │       └───values-night
│   │       └───profile
│   └───gradle
│       └───wrapper
├───assets
│   └───images
├───ios
│   ├───Flutter
│   ├───Runner
│   │   ├───Assets.xcassets
│   │   │   ├───AppIcon.appiconset
│   │   │   └───LaunchImage.imageset
│   │   └───Base.lproj
│   ├───Runner.xcodeproj
│   │   ├───project.xcworkspace
│   │   │   └───xcshareddata
│   │   └───xcshareddata
│   │       └───xcschemes
│   ├───Runner.xcworkspace
│   │   └───xcshareddata
│   └───RunnerTests
├───lib
├───linux
│   ├───flutter
│   └───runner
├───macos
│   ├───Flutter
│   ├───Runner
│   │   ├───Assets.xcassets
│   │   │   └───AppIcon.appiconset
│   │   ├───Base.lproj
│   │   └───Configs
│   ├───Runner.xcodeproj
│   │   ├───project.xcworkspace
│   │   │   └───xcshareddata
│   │   └───xcshareddata
│   │       └───xcschemes
│   ├───Runner.xcworkspace
│   │   └───xcshareddata
│   └───RunnerTests
├───prototype
├───test
├───web
│   └───icons
└───windows
    ├───flutter
    └───runner
        └───resources
````

## Brief description of the project

| Folder / File    | Use / Brief Description                                            |
| ---------------- | ------------------------------------------------------------------ |
| **lib/**         | Main source code of the Flutter app                                |
| main.dart        | Entry point of the app; sets up MaterialApp and routes             |
| screens/         | Application screens (login, register, voting, profile, etc.)       |
| models/          | Data models (e.g., User, Vote, Candidate)                          |
| services/        | Business logic and services (authentication, database, navigation) |
| widgets/         | Reusable UI components                                             |
| **test/**        | Unit and integration tests                                         |
| **assets/**      | Static resources such as images and fonts                          |
| **docs/**        | Project documentation and diagrams                                 |
| **prototype/**   | UI mockups and design prototypes (e.g., Figma files)               |
| **sql/**         | SQL scripts for database setup                                     |
| **apk/**         | Compiled APK files ready for installation                          |
| **.gitignore**   | Git ignore configuration file                                      |
| **LICENSE**      | Project license file                                               |
| **README.md**    | Main project documentation file                                    |
| **pubspec.yaml** | Flutter/Dart dependencies and project configuration file           |


## Installation and Setup

1. **Clone the repository:**

   ```bash
   git clone https://github.com/Paulidex/EAN-Elections.git
   ```

2. **Open the project in Android Studio or your preferred IDE.**

3. **Configure Firebase (when integrated):**

   * Create a Firebase project.
   * Download the `google-services.json` file.
   * Add it to the `android/app/` directory.
   * Configure authentication and database rules as needed.

4. **Install dependencies:**

   ```bash
   flutter pub get
   ```

5. **Build and run the application** on an emulator or physical device:

   ```bash
   flutter run
   ```

## Future Plans

* Complete Firebase integration for authentication and data management.
* Improve security measures to ensure vote confidentiality.
* Add a notification system for election updates.
* Implement an analytics dashboard for administrators.
* Support multiple election types and diverse voting methods.

## License

This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for details.

## Contact

For questions, suggestions, or feedback, please open an issue or contact the maintainer via the GitHub repository.

Thank you for your interest in EAN-Elections — a secure and accessible mobile electronic voting solution built with Flutter!
