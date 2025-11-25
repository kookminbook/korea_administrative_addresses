import 'package:korea_administrative_addresses/data/busan.dart';
import 'package:korea_administrative_addresses/data/chungbuk.dart';
import 'package:korea_administrative_addresses/data/chungnam.dart';
import 'package:korea_administrative_addresses/data/daegu.dart';
import 'package:korea_administrative_addresses/data/daejeon.dart';
import 'package:korea_administrative_addresses/data/gangwon.dart';
import 'package:korea_administrative_addresses/data/gwangju.dart';
import 'package:korea_administrative_addresses/data/gyeongbuk.dart';
import 'package:korea_administrative_addresses/data/gyeonggi.dart';
import 'package:korea_administrative_addresses/data/gyeongnam.dart';
import 'package:korea_administrative_addresses/data/incheon.dart';
import 'package:korea_administrative_addresses/data/jeju.dart';
import 'package:korea_administrative_addresses/data/jeonbuk.dart';
import 'package:korea_administrative_addresses/data/jeonnam.dart';
import 'package:korea_administrative_addresses/data/sejong.dart';
import 'package:korea_administrative_addresses/data/seoul.dart';
import 'package:korea_administrative_addresses/data/ulsan.dart';

List<String> getAddressesByAddrLv1(String addrLv1) {
  List<String> addresses = [];

  switch (addrLv1) {
    case '서울특별시':
      addresses = seoul;
      break;
    case '부산광역시':
      addresses = busan;
      break;
    case '대구광역시':
      addresses = daegu;
      break;
    case '인천광역시':
      addresses = incheon;
      break;
    case '광주광역시':
      addresses = gwangju;
      break;
    case '대전광역시':
      addresses = daejeon;
      break;
    case '울산광역시':
      addresses = ulsan;
      break;
    case '세종특별자치시':
      addresses = sejong;
      break;
    case '경기도':
      addresses = gyeonggi;
      break;
    case '강원특별자치도':
      addresses = gangwon;
      break;
    case '충청북도':
      addresses = chungbuk;
      break;
    case '충청남도':
      addresses = chungnam;
      break;
    case '전북특별자치도':
      addresses = jeonbuk;
      break;
    case '전라남도':
      addresses = jeonnam;
      break;
    case '경상북도':
      addresses = gyeongbuk;
      break;
    case '경상남도':
      addresses = gyeongnam;
      break;
    case '제주특별자치도':
      addresses = jeju;
      break;
    default:
      break;
  }
  return addresses;
}
