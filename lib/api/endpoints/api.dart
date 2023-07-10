class EndPoints {
  static const String baseUrl = "http://192.168.1.80/flutter-motorstar/";

  // ignore: library_private_types_in_public_api
  static final _AuthEndPoints authEndPoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String register = "register.php";
  final String login = "login.php";
  final String profile = "product.php";
  final String changepassword = "changepassword.php";
}
