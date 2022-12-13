// ignore_for_file: library_private_types_in_public_api

class AppRoute {
  AppRoute._();

  static _NamedRoute name = _NamedRoute();
  static _RoutePath path = _RoutePath();
}

class _RoutePath {
  String root = '/';
  String home = 'home';
}

class _NamedRoute {
  String root = '/';
  String home = 'home';
}