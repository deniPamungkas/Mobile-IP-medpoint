# CMS Medpoint System
repository ini adalah repository setup prohect medpoint sistem untuk mobile application. Ini adalah setup project yang menggunakan teknology dart dan flutter. untuk database, saya telah mengkoneksikannya dengan supabase cloud.

## teknologi
- Language -> Dart
- Framework -> Flutter
- Database -> Supabase cloud

## struktur folder
- Mobile-IP-medpoint/
- ├── android/
- │   ├── app/
- │   │   ├── build.gradle          # File konfigurasi Gradle untuk aplikasi Android
- │   │   └── src/
- │   │       └── main/
- │   │           ├── AndroidManifest.xml  # File manifes aplikasi Android
- │   │           ├── kotlin/
- │   │           │   └── com/
- │   │           │       └── example/
- │   │           │           └── MainActivity.kt  # Kelas utama Android (untuk Kotlin)
- │   │           └── res/        # Sumber daya seperti ikon, gambar, dll.
- │   └── build.gradle              # Konfigurasi proyek Android
- │   └── settings.gradle           # Konfigurasi pengaturan Gradle
- ├── ios/
- │   ├── Runner.xcodeproj/         # File proyek Xcode
- │   ├── Runner.xcworkspace/       # Workspace Xcode
- │   ├── Runner/
- │   │   ├── AppDelegate.swift     # File utama aplikasi iOS
- │   │   ├── Info.plist            # Konfigurasi aplikasi iOS
- │   │   └── Assets.xcassets/      # Sumber daya seperti ikon aplikasi
- │   └── Podfile                   # File konfigurasi CocoaPods
- ├── lib/
- │   └── main.dart                 # Entry point aplikasi Flutter
- ├── test/
- │   └── widget_test.dart          # File pengujian widget bawaan
- ├── web/                          # (Jika mendukung web)
- │   └── index.html                # File HTML utama aplikasi web
- ├── macos/                        # (Jika mendukung macOS)
- │   ├── Runner/
- │   │   ├── AppDelegate.swift
- │   │   ├── MainFlutterWindow.swift
- │   │   └── Info.plist
- ├── linux/                        # (Jika mendukung Linux)
- │   └── CMakeLists.txt            # File konfigurasi build Linux
- ├── windows/                      # (Jika mendukung Windows)
- │   └── CMakeLists.txt            # File konfigurasi build Windows
- ├── build/                        # File hasil build (otomatis dibuat)
- ├── .gitignore                    # File untuk mengabaikan file tertentu dalam Git
- ├── pubspec.yaml                  # File konfigurasi proyek dan dependensi
- ├── pubspec.lock                  # File versi dependensi yang digunakan
- ├── README.md                     # Dokumentasi proyek
- ├── .metadata                     # Metadata proyek Flutter
- ├── analysis_options.yaml         # Aturan analisis kode (opsional)
- ├── .idea/                        # File konfigurasi IDE (opsional)
- └── .dart_tool/                   # Cache build dan pengaturan (otomatis dibuat)

