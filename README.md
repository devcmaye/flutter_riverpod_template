 **Flutter Riverpod Clean Architecture Template**

This repository provides a **fast, scalable, and standard Flutter project structure** using **Riverpod** and **Clean Architecture** principles.
It is designed to help you **develop features quickly**, maintain clean separation of concerns, and scale your app easily.

---

## ✨ Key Goals

* ✅ Clean Architecture (Data / Domain / Presentation)
* ✅ Riverpod (Generator-based providers)
* ✅ Feature-first folder structure
* ✅ Reusable networking layer (Dio)
* ✅ Easy to copy & create new features
* ✅ Ready-to-use as a GitHub template

---

## 🧠 Architecture Overview

```
UI (Presentation)
   ↓
State (Provider / Notifier)
   ↓
UseCase (Domain)
   ↓
Repository (Domain Interface)
   ↓
RepositoryImpl (Data)
   ↓
RemoteDatasource
   ↓
API / Dio
```

Each layer has **one responsibility only**, making the codebase predictable and testable.

---

## 📁 Folder Structure

```
lib/
├── core/
│   ├── network/
│   │   ├── api/
│   │   │   ├── api_constants.dart
│   │   │   ├── api_service.dart
│   │   │   ├── api_service_provider.dart
│   │   │   └── api_service_provider.g.dart
│   │   ├── dio/
│   │   │   └── dio_provider.dart
│   │   ├── models/
│   │   │   └── base_response.dart
│   │   └── error/
│   │       └── failure.dart
│   └── widgets/
│       └── common widgets (buttons, dialogs, inputs, etc.)
│
├── features/
│   └── template/
│       ├── data/
│       │   ├── datasources/
│       │   │   └── template_remote_datasource.dart
│       │   ├── models/
│       │   │   ├── requests/
│       │   │   │   └── template_request.dart
│       │   │   ├── responses/
│       │   │   │   └── template_response.dart
│       │   │   └── dtos/
│       │   │       └── template_dto.dart
│       │   └── repositories/
│       │       ├── template_repository_impl.dart
│       │       └── template_repository_provider.dart
│       │
│       ├── domain/
│       │   ├── entities/
│       │   │   └── template_entity.dart
│       │   ├── repositories/
│       │   │   └── template_repository.dart
│       │   └── usecases/
│       │       └── template_usecase.dart
│       │
│       └── presentation/
│           ├── providers/
│           │   └── template_provider.dart
│           ├── screens/
│           │   └── template_screen.dart
│           └── widgets/
│               └── template_widget.dart
│
└── main.dart
```

---

## 🧩 Core Concepts

### 🔹 Core Layer

* **network/** → Dio, API services, error handling
* **widgets/** → Reusable UI widgets shared across features

### 🔹 Feature Layer

Each feature (e.g. `auth`, `profile`, `post`) follows the same structure:

* **data** → API, DTOs, repository implementation
* **domain** → Entities, repository interface, usecases
* **presentation** → UI, state, Riverpod providers

---

## 🧪 State Management

* Uses **Riverpod (riverpod_annotation + generator)**
* Providers are:

  * `NotifierProvider` for UI state
  * `Provider` for repositories & services
* `.g.dart` files are generated automatically

Run generator:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

---

## 🌐 Networking

* Dio is used for HTTP requests
* Centralized configuration via `dio_provider`
* Supports:

  * Logging interceptors
  * Base response parsing
  * Centralized error handling (`Failure`)

---

## ⚡ How to Create a New Feature Fast

1. Copy `features/template`
2. Rename it (e.g. `auth`, `profile`)
3. Replace `template` with your feature name
4. Update API endpoints and models
5. Done ✅

---

## 🧑‍💻 Requirements

* Flutter 3.x+
* Dart 3.x
* Riverpod 2.x
* Dio

---

## 📌 Why This Template?

* Less boilerplate
* Clear boundaries
* Easy for teams
* Easy to test
* Easy to scale

---

## 📄 License

MIT License
Use freely for personal or commercial projects.
