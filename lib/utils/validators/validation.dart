class RokWikiValidator {
  static String? validateEmail(String value) {
    if (value.isEmpty || value == '') {
      return 'Email is required';
    }

    // Regular expression for email validation
    // matches any string that starts with one or more alphanumeric characters or dots,
    // followed by the @ symbol, followed by one or more alphanumeric characters, a dot,
    // and one or more alphabetic characters. This pattern is commonly used to validate email addresses.
    final RegExp _emailRegExp = RegExp(
      r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
    );

    if (!_emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }

    return null;
  }

  static String? validatePassword(String value) {
    if (value.isEmpty || value == '') {
      return 'Password is required';
    }

    // Check for minimun of password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }

    // Check for Upper case
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }

    // Check for Number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number';
    }

    // Check for Special Character
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty || value == '') {
      return 'Phone number is required';
    }

    // Regular expression for phone number validation (assuming a 10-digit us phone number)
    final RegExp _phoneNumberRegExp = RegExp(
      r'^\d{10}$',
    );

    if (!_phoneNumberRegExp.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }

    return null;
  }

  // Add more validation according to your needs
}
