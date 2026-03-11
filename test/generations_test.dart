import 'package:korea_administrative_addresses/korea_administrative_addresses.dart';
import 'package:test/test.dart';

void main() {
  test('currentGen contains 서울특별시 head value', () {
    expect(currentGen.containsKey('서울특별시'), isTrue);
    final seoul = currentGen['서울특별시'] as Map<String, dynamic>;
    expect(seoul['head'], equals(39));
  });

  test('currentGen nested districts values are accessible', () {
    final ulsan = currentGen['울산광역시'] as Map<String, dynamic>;
    final districts = ulsan['districts'] as Map<String, dynamic>;
    final namgu = districts['남구'] as List<dynamic>;
    expect(namgu.first, equals(14));
  });
}
