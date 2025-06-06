
# 📱 EAN-Elections

EAN-Elections es una aplicación móvil multiplataforma desarrollada con Flutter que implementa un sistema de votación electrónica seguro, eficiente y fácil de usar. Está diseñada para ofrecer una experiencia fluida tanto para votantes como para administradores, incluyendo funcionalidades como registro, autenticación, votación, recuperación de contraseña y visualización de resultados.

---

## 📑 Tabla de Contenidos

- [Descripción del Proyecto](#descripción-del-proyecto)
- [Estructura del Proyecto](#estructura-del-proyecto)
- [Descripción de Carpetas y Archivos](#descripción-de-carpetas-y-archivos)
- [Pantallas Principales](#pantallas-principales)
- [Widgets Reutilizables](#widgets-reutilizables)
- [Prototipo](#prototipo)
- [Requisitos](#requisitos)
- [Instalación y Configuración](#instalación-y-configuración)
- [Ejecución y Desarrollo](#ejecución-y-desarrollo)
- [Pruebas](#pruebas)
- [Despliegue](#despliegue)
- [CI/CD y Automatización](#cicd-y-automatización)
- [Descripción de Ramas de Desarrollo](#descripción-de-ramas-de-desarrollo)
- [Licencia](#licencia)

---

## 📘 Descripción del Proyecto

EAN-Elections proporciona un sistema de votación electrónica para comunidades, organizaciones y eventos electorales de pequeña y mediana escala. Los usuarios pueden registrarse, iniciar sesión, emitir su voto de forma segura y consultar los resultados. Los administradores pueden gestionar elecciones, validar votos y monitorear el progreso del evento electoral.

Está desarrollado con **Flutter**, lo que permite compatibilidad multiplataforma: Android, iOS, Web, Windows, macOS y Linux.

---

## 🧱 Estructura del Proyecto

```bash
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
```

## 🗂️ Descripción de Carpetas y Archivos

| Carpeta / Archivo             | Descripción                                                                 |
|------------------------------|-----------------------------------------------------------------------------|
| `lib/`                       | Código fuente principal en Flutter                                          |
| `lib/main.dart`              | Punto de entrada de la app y definición de rutas                           |
| `lib/screens/`               | Pantallas principales (login, registro, votación, etc.)                    |
| `lib/widgets/`               | Componentes UI reutilizables (botones, fondos, inputs)                     |
| `assets/`                    | Recursos estáticos como imágenes                                           |
| `prototype/`                 | Mockups de diseño                                                          |
| `test/`                      | Pruebas unitarias y de widgets                                             |
| `android/`, `ios/`, etc.     | Código nativo específico por plataforma                                    |
| `.github/workflows/`         | Automatizaciones de GitHub Actions para CI/CD                              |
| `pubspec.yaml`               | Configuración del proyecto y dependencias                                 |
| `README.md`                  | Documentación del proyecto                                                 |

## 🖥️ Pantallas Principales (`lib/screens/`)

| Archivo                               | Función                                                                 |
|--------------------------------------|------------------------------------------------------------------------|
| `login_screen.dart`                  | Pantalla de inicio de sesión                                           |
| `register_screen.dart`               | Registro de nuevos usuarios                                           |
| `home_screen.dart`                   | Pantalla principal del usuario                                        |
| `confirm_vote_screen.dart`           | Confirmación de voto                                                  |
| `forgot_password_screen.dart`        | Solicitud de recuperación de contraseña                               |
| `forgot_password_advice_screen.dart` | Instrucciones para recuperación de contraseña                         |
| `register_confirmation_screen.dart`  | Confirmación después del registro                                     |
| `reset_password_screen.dart`         | Cambio de contraseña                                                  |
| `splash_screen.dart`                 | Pantalla de carga inicial                                             |

## 🧩 Widgets Reutilizables (`lib/widgets/`)

Componentes modulares de UI que aseguran un diseño coherente:

- `red_button.dart`, `white_button.dart`: Botones personalizados.
- `background.dart`, `second_background.dart`: Fondos decorativos.
- `text_field.dart`: Campos de entrada con validación.
- `circle.dart`, `icon.dart`, `logo.dart`: Elementos decorativos.

## 🧪 Prototipo (`prototype/`)

Contiene mockups de interfaz (`mockup.png`) utilizados para guiar el diseño y mantener coherencia visual con la propuesta original.

## ⚙️ Requisitos

- Flutter SDK
- Android Studio / Xcode
- Firebase configurado (para autenticación)
- Git
- Herramientas de línea de comandos (Gradle, CMake, etc.)

## 🛠️ Instalación y Configuración

1. Clona el repositorio:

```bash
git clone https://github.com/Paulidex/EAN-Elections.git
cd EAN-Elections
```

2. Instala las dependencias:

```bash
flutter pub get
```

3. Configura Firebase:

- `google-services.json` en `android/app/`
- `GoogleService-Info.plist` en `ios/Runner/`

4. Ejecuta la app:

```bash
flutter run
```

## ▶️ Ejecución y Desarrollo

- El archivo `main.dart` define las rutas y temas globales.
- Las nuevas pantallas deben agregarse en `lib/screens/` y registrarse en `main.dart`.
- Usa los widgets en `lib/widgets/` para mantener coherencia visual.

## 🚀 Despliegue

Preparado para múltiples plataformas Flutter. Asegúrate de compilar nativamente según el sistema:

```bash
flutter build apk       # Android
flutter build ios       # iOS
flutter build web       # Web
```

## 🔁 CI/CD y Automatización

- GitHub Actions en `.github/workflows/`:
  - `codeql.yml`: Análisis de seguridad automatizado.
  - `sync-branches.yml`: Sincronización entre ramas principales.

## 🌱 Descripción de Ramas de Desarrollo

### 🔹 `feature/mvp-ui-navigation`

- Estructura de navegación del MVP implementada.
- Configuración inicial de rutas en `main.dart`.
- Todas las pantallas básicas conectadas: login, registro, home, confirmación, splash, etc.
- Interacción fluida sin lógica de negocio aún.
- Reutilización de widgets personalizados para botones, inputs y fondos.

### 🔹 `feature/firebase-authentication`

- Integración completa de Firebase Authentication.
- Funcionalidad de login, registro, y recuperación de contraseña.
- Manejo de errores de autenticación.
- Pantallas conectadas a Firebase:
  - `login_screen`
  - `register_screen`
  - `forgot_password_screen`
  - `reset_password_screen`

### 🔹 `feature/mvp-data-connection`

- Conexión con Firestore u otra base de datos remota.
- Guardado de votos reales.
- Validación de usuarios (si ya votaron o no).
- Visualización de resultados desde la base de datos.
- Sincronización de datos entre frontend y backend para el MVP.

## 📄 Licencia

Este proyecto está bajo la licencia MIT. Ver el archivo `LICENSE` para más detalles.
