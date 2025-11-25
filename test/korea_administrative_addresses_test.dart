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

  group('getAddressByAddrLv1 tests', () {
    test('getAddressesByAddrLv1 returns busan list', () {
      final results = getAddressesByAddrLv1('부산광역시');
      expect(results, equals(busan));
    });

    test('getAddressesByAddrLv1 matches filtering of all for 서울특별시', () {
      const lv1 = '서울특별시';
      final expected = all.where((a) => a.startsWith(lv1)).toList();
      final results = getAddressesByAddrLv1(lv1);
      expect(results, equals(expected));
    });

    test('getAddressesByAddrLv1 returns empty list for unknown top-level', () {
      final results = getAddressesByAddrLv1('존재하지않는시도');
      expect(results, isEmpty);
    });
  });
}
