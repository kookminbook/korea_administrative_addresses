import 'package:korea_administrative_addresses/korea_administrative_addresses.dart';

void main() {
  print('서울 주소 개수: ${seoul.length}');
  print('서울 주소 예시: ${seoul.take(5).toList()}');
  print('전체 주소 개수: ${all.length}');

  print('서울 주소 개수: ${getAddressesByAddrLv1("서울특별시").length}');
  print('서울 주소 예시: ${getAddressesByAddrLv1("서울특별시").take(5).toList()}');
}
