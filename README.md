 ## Flutter Riverpod Clean Architecture Template 

This repository provides a **fast, scalable, and standard Flutter project structure** using **Riverpod** and **Clean Architecture** principles.
It is designed to help you **develop features quickly**, maintain clean separation of concerns, and scale your app easily.

---

## ✨ Key Goals

* ✅ Clean Architecture (Data / Domain / Presentation)
* ✅ Riverpod (Generator-based providers)
* ✅ Feature-base folder structure
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
│       │       ├── template_repository.dart
│       │       └── template_repository_provider.dart
│       │
│       ├── domain/
│       │   ├── entities/
│       │   │   └── template_entity.dart
│       │   ├── repositories/
│       │   │   └── template_repository_impl.dart
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

