class EndPoints {
  static const String baseUrl = "https://easentralized.easethetics.ph/";

  // ignore: library_private_types_in_public_api
  static final _AuthEndPoints authEndPoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String register = "api/mobile/v1.1/register";
  final String login = "api/mobile/v1.1/login";
  final String users = "api/users/2";
  final String profile = "product.php";
  final String changepassword = "changepassword.php";
}
