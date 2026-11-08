# DnD Bestiary

Flutter **3.47.9**.

```bash
flutter pub get
flutter run
```

Commits follow [Conventional Commits](doc/commit-convention.md).

## Project Structure

The project follows a **Feature-First** architecture combined with **Domain-Driven Design (DDD)** principles:

```text
lib/
├── core/                                 # Cross-cutting shared infrastructure
│    ├── database/                        # Local database engine & drivers
│    ├── network/                         # Network client & interceptors
│    ├── responsive/                      # Screen geometry & adaptive breakpoints
│    ├── style/                           # Design tokens, themes & typography
│    └── widgets/                         # Reusable core UI components
│
├── features/                             # Business modules
│    │
│    ├── app_shell/                       # App Shell (Navigation & responsive scaffold host)
│    │    └── presentation/               # Presentation-only feature
│    │         ├── bloc/                  # Shell state management (tabs, navigation state)
│    │         ├── layouts/               # Responsive layout templates (compact, expanded)
│    │         ├── screens/               # Shell host screens
│    │         └── widgets/               # Navigation rails, bars & app bars
│    │
│    ├── feature_1/                       # Full-cycle business feature
│    │    ├── data/                       # Data layer (network & local persistence)
│    │    │    ├── datasources/           # Remote & local data sources
│    │    │    ├── dto/                   # Raw API data transfer objects
│    │    │    ├── mappers/               # Two-way mappers (DTO <-> Domain)
│    │    │    └── repositories/          # Concrete repository implementations
│    │    ├── domain/                     # Business layer (pure Dart, framework-agnostic)
│    │    │    ├── models/                # Business entities
│    │    │    ├── repositories/          # Abstract repository interfaces (contracts)
│    │    │    └── usecases/              # Interactors & business logic
│    │    └── presentation/               # UI layer
│    │         ├── bloc/                  # State management (BLoC / Cubit)
│    │         ├── screens/               # Feature screens
│    │         └── widgets/               # Feature-specific UI widgets
│    │
│    └── feature_2/                       # Additional business feature
│         ├── data/
│         ├── domain/
│         └── presentation/
│
└── main.dart                             # Application entry point
```
