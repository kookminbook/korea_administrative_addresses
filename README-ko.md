# korea_administrative_addresses

![Pub Version](https://img.shields.io/pub/v/korea_administrative_addresses)

이 패키지는 대한민국 전국의 **표준 행정동(읍/면/동) 주소 데이터를 제공하는 순수 Dart 패키지**입니다.
외부 API의 주소 반환 오류(예: “오류1동” vs “오류제1동”)를 보정하거나, 앱/서버에서 행정동 기준 데이터 검증 및 정규화에 사용할 수 있습니다.

## 특징

- 대한민국 모든 행정동(Eup/Myeon/Dong) 포함
- 시/도 단위 파일로 분리 (예: `seoul.dart`, `busan.dart`, `gyunggi.dart`)
- 전체 데이터를 포함한 `all.dart` 제공
- **Flutter 의존성 없음** — 순수 Dart 패키지
- 주소 정합성 검증, 외부 API 오류 보정에 적합
- 코드 없이 문자열 리스트 데이터만 포함

## 설치 방법

`pubspec.yaml` 에 추가:

```yaml
dependencies:
  korean_administrative_districts: ^1.1.0
```

설치:

```
dart pub get
```

## 🔧 사용 예시

```dart
import 'package:korea_administrative_addresses/korea_administrative_addresses.dart';

void main() {
  print(seoul);  // 서울시 행정동 리스트
  print(all);    // 전국 전체 리스트
  print('서울 주소 개수: ${getAddressesByAddrLv1("서울특별시").length}');  // 서울특별시 행정동 리스트
}
```

예시 출력:

```
서울특별시 종로구 청운효자동
서울특별시 종로구 사직동
...
```
