# Cinematix

Cinematix is a mobile movie ticketing app. The goal of this project is to create a personal development portfolio to know further about Riverpod State Management and also to learn implementing seperation of concerns

## Built With
- Flutter
- Firebase
- TMDB API

## Layers Overview

### 1. Domain Layer
- Changes rarely happens here, it represents the core business logic and entities of the application.
- It should be independent of any specific framework or UI.
- It consists of entities and usecases that define the business rules.

### 2. Data Layer
- The data layer is responsible for handling data storage, retrieval, and data sources.
- It communicates with external services, databases, and APIs.
- It implements the abstractions defined in the domain layer and provides concrete implementations.

### 3. Presentation Layer
- The presentation layer handles user interface, user interaction, and app state management.
- It uses the domain and data layers to fetch and manipulate data.

## Upcoming Plans
Here are some higher-level initiatives that I am currently working on:
- Update Firebase security rules to fix insecure rules
- Integrate MidTrans/Xendit as payment gateway in sandbox environment

---

## Some notes :D
This project is the repository for the course on 
https://www.udemy.com/course/flutter-flixid/ >> Highly recommended, great course taught by great instructor !

Some scratch reminder for myself in the future:
```
Presentation layer - UI
Domain Layer - Proses bisnis, jarang berubah, (model & usecase)
Data Layer - mengambil data, update data, dll (api call)

Add package = 
Command palette -> Pubspec assist: add dependencies

Run freeze:
dart run build_runner watch -d

fromJson kalau mau custom:
- hapus part .g.dart
- fromJson ganti jadi fromJSON
- contohnya ada di movie.dart
```
