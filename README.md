# korea_administrative_addresses

![Pub Version](https://img.shields.io/pub/v/korea_administrative_addresses)

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
  korean_administrative_districts: ^1.2.0
```

Then run:

```
dart pub get
```

## Usage

```dart
import 'package:korea_administrative_addresses/korea_administrative_addresses.dart';

void main() {
  print(seoul);  // List of Seoul district strings
  print(all);    // Full Korea-wide list
  print('서울 주소 개수: ${getAddressesByAddrLv1("서울특별시").length}');  // List of Seoul district strings
}
```

Example output:

```
서울특별시 종로구 청운효자동
서울특별시 종로구 사직동
...
```

## Generation metadata

This package exposes generation metadata compiled from `assets/generations.json` as a `const` map named `currentGen`.

Example:

```dart
import 'package:korea_administrative_addresses/korea_administrative_addresses.dart';

void main() {
  final head = currentGen['서울특별시']['head'];
  print('서울특별시 head: $head');
}
```

### Regenerating `currentGen`

If you update `assets/generations.json`, regenerate the embedded Dart file with the included script:

```bash
# from the project root
dart run tool/gen_generations.dart
# or
dart tool/gen_generations.dart
```

This will overwrite `lib/data/generations.g.dart` with the up-to-date `currentGen` map.
