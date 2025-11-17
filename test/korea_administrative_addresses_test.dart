import 'package:korea_administrative_addresses/korea_administrative_addresses.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('busan address count', () {
      final busanAddresses = all
          .where((address) => address.startsWith('부산광역시'))
          .toList();
      expect(busanAddresses.length, busan.length);
    });
  });
}
