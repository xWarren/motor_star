class EndPoints {
  static const String baseUrl = "https://reqres.in/";

  // ignore: library_private_types_in_public_api
  static final _AuthEndPoints authEndPoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String register = "api/register";
  final String users = "api/users/2";
  final String profile = "product.php";
  final String changepassword = "changepassword.php";
}
