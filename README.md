# korea_administrative_addresses

A lightweight, pure-Dart package containing standardized administrative district names across South Korea.
This package provides a simple, structured dataset of Korean Eup/Myeon/Dong addresses for client-side validation, matching, and processing use cases.

## Features

- Complete list of all administrative districts in South Korea
- Includes Eup(읍), Myeon(면), Dong(동) levels
- Pure Dart package — **no Flutter dependency**
- Organized by metropolitan region (e.g., `seoul.dart`, `busan.dart`, `gyunggi.dart`)
- `all.dart` contains the full merged list
- Ideal for input validation, fuzzy matching, preprocessing, and normalization

## Getting Started

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  korean_administrative_districts: ^0.0.1
```

Then run:

```
dart pub get
```

## Usage

```dart
import 'package:korean_administrative_districts/hangjungdong.dart';

void main() {
  print(seoul);          // List of Seoul district strings
  print(allDistricts);   // Full Korea-wide list
}
```

Example output:

```
서울특별시 종로구 청운효자동
서울특별시 종로구 사직동
...
```
