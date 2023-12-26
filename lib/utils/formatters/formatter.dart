import 'package:intl/intl.dart';

class RokWikiFormatters {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now(); //if null return current date
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Assuming that the phone number is 10 or 11 digits: US format phone number (123) 456-7890
    if (phoneNumber.length == 10) {
      return '${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '${phoneNumber.substring(0, 4)} ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    // Cambodia Phone Number or other
    // 012 345 678
    return phoneNumber;
  }

  static String internationalPhoneNumber(String phoneNumber) {
    // Remove any non-digit character from the phone number
    var digitOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extract the country code from the phone number
    String countryCode = '+${digitOnly.substring(0, 2)}';
    digitOnly = digitOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    //formats the remaining digits of the phone number.
    //If the country code is +1 (which is the country code for the United States and several other countries),
    //the first three digits are grouped together. Each group of digits is followed by a space.

    int i = 0;
    while (i < digitOnly.length) {
      int groupLength = 0;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitOnly.substring(i, end));

      if (end < digitOnly.length) {
        formattedNumber.write(' ');
      }

      i = end;
    }

    return formattedNumber.toString();
  }
}
