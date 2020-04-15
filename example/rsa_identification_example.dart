import 'package:rsa_identification/rsa_identification.dart';

void main() {
  final idCardBarcode =
      'SURNAME|NAME|GENDER|NATIONALITY|ID NUMBER|29 Jul 2000|COUNTRY OF BIRTH|CITIZENSHIP STATUS|26 Jan 2017|23370|SMART ID NUMBER|1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890';
  final idCard = IdCard.fromBarcodeString(idCardBarcode);
  print('ID Card - First Names: ${idCard.firstNames}');
  print('ID Card - Last Name: ${idCard.surname}');
  print('ID Card - ID Number: ${idCard.idNumber}');

  final idBookBarcode = '9609145016083';
  final idBook = IdBook.fromIdNumber(idBookBarcode);
  print('ID Book - Date of Birth: ${idBook.birthDate}');
  print('ID Book - Gender: ${idBook.gender}');
  print('ID Book - Citizenship: ${idBook.citizenshipStatus}');
}
