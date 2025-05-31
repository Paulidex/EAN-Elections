# EAN-Elections

EAN-Elections is a cross-platform mobile application developed with Flutter that implements a secure, efficient, and user-friendly electronic voting system. It is designed to provide a smooth experience for voters and administrators, including features such as registration, authentication, voting, password recovery, and results visualization.

## Table of Contents

- [Project Description](#project-description)
- [Project Structure](#project-structure)
- [Files and Folders Description](#files-and-folders-description)
- [Main Screens](#main-screens)
- [Reusable Widgets](#reusable-widgets)
- [Prototype](#prototype)
- [Requirements](#requirements)
- [Installation and Setup](#installation-and-setup)
- [Running and Development](#running-and-development)
- [Testing](#testing)
- [Deployment](#deployment)
- [CI/CD and Automation](#cicd-and-automation)
- [License](#license)

## Project Description

EAN-Elections provides an electronic voting system for communities, organizations, and small to medium-sized electoral events. Users can register, log in, securely cast their votes, and view results. Administrators can manage elections, validate votes, and monitor election progress.

The project is developed using Flutter, allowing multi-platform support on Android, iOS, Web, Windows, macOS, and Linux.

## Project Structure

```
/ (root)
│   .gitignore
│   .metadata
│   analysis\_options.yaml
│   LICENSE
│   pubspec.lock
│   pubspec.yaml
│   README.md
│
├───.github/
│   └───workflows/
│       ├── codeql.yml
│       └── sync-branches.yml
│
├───android/
│   ├───.gradle/
│   ├───app/
│   │   └───src/
│   │       ├───debug/
│   │       ├───main/
│   │       │   ├── AndroidManifest.xml
│   │       │   ├── kotlin/com/example/ean\_elections/MainActivity.kt
│   │       │   └── res/
│   │       │       ├── drawable/
│   │       │       ├── drawable-v21/
│   │       │       ├── mipmap-hdpi/
│   │       │       ├── mipmap-mdpi/
│   │       │       ├── mipmap-xhdpi/
│   │       │       ├── mipmap-xxhdpi/
│   │       │       ├── mipmap-xxxhdpi/
│   │       │       ├── values/
│   │       │       └── values-night/
│   │       └── profile/
│   │           └── AndroidManifest.xml
│   └───gradle/wrapper/
│       └── gradle-wrapper.properties
│
├───assets/
│   └───images/
│       └── popcorn.png
│
├───ios/
│   ├───Flutter/
│   ├───Runner/
│   │   ├── AppDelegate.swift
│   │   ├── Info.plist
│   │   ├── Runner-Bridging-Header.h
│   │   ├── Assets.xcassets/
│   │   ├── Base.lproj/
│   │   └── LaunchImage.imageset/
│   ├───Runner.xcodeproj/
│   ├───Runner.xcworkspace/
│   └───RunnerTests/
│       └── RunnerTests.swift
│
├───lib/
│   ├── main.dart
│   ├── screens/
│   │   ├── confirm\_vote\_screen.dart
│   │   ├── forgot\_password\_advice\_screen.dart
│   │   ├── forgot\_password\_screen.dart
│   │   ├── home\_screen.dart
│   │   ├── login\_screen.dart
│   │   ├── register\_confirmation\_screen.dart
│   │   ├── register\_screen.dart
│   │   ├── reset\_password\_screen.dart
│   │   └── splash\_screen.dart
│   └── widgets/
│       ├── background.dart
│       ├── circle.dart
│       ├── icon.dart
│       ├── logo.dart
│       ├── red\_button.dart
│       ├── second\_background.dart
│       ├── text\_field.dart
│       └── white\_button.dart
│
├───linux/
│   ├── flutter/
│   └── runner/
│
├───macos/
│   ├── Flutter/
│   ├── Runner/
│   ├── Runner.xcodeproj/
│   ├── Runner.xcworkspace/
│   └── RunnerTests/
│
├───prototype/
│   └── mockup.png
│
├───test/
│   └── widget\_test.dart
│
├───web/
│   ├── favicon.png
│   ├── index.html
│   ├── manifest.json
│   └── icons/
│       ├── Icon-192.png
│       ├── Icon-512.png
│       ├── Icon-maskable-192.png
│       └── Icon-maskable-512.png
│
└───windows/
├── flutter/
└── runner/
└── resources/
└── app\_icon.ico
````

## Files and Folders Description

| Folder / File               | Description                                                           |
|----------------------------|-----------------------------------------------------------------------|
| `lib/`                     | Main Flutter source code                                              |
| `lib/main.dart`            | App entry point; sets up MaterialApp and routes                      |
| `lib/screens/`             | Application screens (login, register, voting, profile, etc.)         |
| `lib/widgets/`             | Reusable UI components (buttons, backgrounds, text fields, etc.)     |
| `assets/`                  | Static assets like images and fonts                                  |
| `prototype/`               | UI mockups and design prototypes                                     |
| `test/`                    | Unit and widget tests                                                |
| `android/`, `ios/`, `web/`, `windows/`, `linux/`, `macos/` | Platform-specific native code and configuration      |
| `.github/workflows/`       | CI/CD and security scan automation scripts                          |
| `pubspec.yaml`             | Flutter project config and dependencies                              |
| `README.md`                | Project documentation                                               |
| `LICENSE`                  | License file                                                       |

## Main Screens (`lib/screens/`)

| File                           | Description                                                  |
|-------------------------------|--------------------------------------------------------------|
| `login_screen.dart`            | User login screen                                            |
| `register_screen.dart`         | New user registration                                        |
| `home_screen.dart`             | Main dashboard screen                                        |
| `confirm_vote_screen.dart`     | Vote confirmation screen                                    |
| `forgot_password_screen.dart`  | Password recovery request screen                             |
| `forgot_password_advice_screen.dart` | Instructions for password recovery                     |
| `register_confirmation_screen.dart` | Confirmation screen after registration                   |
| `reset_password_screen.dart`   | Password reset screen                                        |
| `splash_screen.dart`           | Initial splash/loading screen                               |

## Reusable Widgets (`lib/widgets/`)

This folder contains modular UI components to keep a consistent design throughout the app:

- **Buttons:** `red_button.dart`, `white_button.dart` – Custom styled buttons.
- **Backgrounds:** `background.dart`, `second_background.dart` – Background graphics for screens.
- **Inputs:** `text_field.dart` – Custom text input fields with validation.
- **Decorative:** `circle.dart`, `icon.dart`, `logo.dart` – Icons, logos, and decorative shapes.

These components improve maintainability and UI consistency by enabling reuse.

## Prototype (`prototype/`)

Contains UI mockups and design references such as `mockup.png`. These assets are used to guide development and ensure the app's UI matches the design vision.

## Requirements

- Flutter SDK (stable version)
- Android Studio and/or Xcode for native builds
- Internet connection for services like Firebase Authentication
- Git for version control
- Command-line build tools (Gradle, CMake, etc.)

## Installation and Setup

1. Clone the repository:

```bash
git clone <repository-url>
  cd ean-elections
````

2. Install dependencies:

```bash
flutter pub get
```

3. Configure Firebase (optional for authentication):

   * Place `google-services.json` in `android/app/`.
   * Place `GoogleService-Info.plist` in `ios/Runner/`.
   * Set up Firebase project and enable required services.

4. Run the app on an emulator or device:

```bash
flutter run
```

## Running and Development

* The entry point is `lib/main.dart`, which sets routes and theme.
* Add new screens in `lib/screens/` and register routes in `main.dart`.
* Use reusable UI components from `lib/widgets/`.

## CI/CD and Automation

* Automated workflows in `.github/workflows/` handle security scans and branch synchronization.
* Integrated with GitHub Actions to ensure code quality and facilitate deployments.
