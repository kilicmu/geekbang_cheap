import 'package:geekbang_simple/desktop/routes/home/home.dart';
import 'package:geekbang_simple/desktop/routes/search/search.dart';
import 'package:geekbang_simple/desktop/routes/user_home/user_home.dart';

final route_config = {
  "/user/home": (context) => const UserHome(),
  "/search": (context) => const Search(),
  '/': (context) => const Home(),
};
