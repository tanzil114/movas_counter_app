import 'package:movas/router/router.dart';
import 'package:movas_counter_app/movas/views/home_page.dart';

var router = Router(
  initialRoute: RouteName.home,
  useDemo: false,
  routes: {
    RouteName.home: (context) => HomePage(
          title: 'Home Page',
        ),
  },
  demoRoutes: {},
);

class RouteName {
  static const String home = "home";
}

class DemoRouteName {}
