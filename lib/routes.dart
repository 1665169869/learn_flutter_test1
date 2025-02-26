import 'package:fluro/fluro.dart';
import 'package:learn_flutter_test1/pages/home/index.dart';
import 'package:learn_flutter_test1/pages/login/index.dart';
import 'package:learn_flutter_test1/pages/not_found.dart';
import 'package:learn_flutter_test1/pages/register/index.dart';
import 'package:learn_flutter_test1/pages/room_detail/index.dart';

class Routes {
  static const String home = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String roomDetail = '/room/:roomId';

  static final Handler _homeHander = Handler(
    handlerFunc: (context, Map<String, dynamic> param) => HomePage(),
  );

  static final Handler _loginHander = Handler(
    handlerFunc: (context, Map<String, dynamic> param) => LoginPage(),
  );

  static final Handler _registerHander = Handler(
    handlerFunc: (context, Map<String, dynamic> param) => RegisterPage(),
  );

  static final Handler _notFoundHander = Handler(
    handlerFunc: (context, Map<String, dynamic> params) => NotFoundPage(),
  );

  static final Handler _roomDetailHander = Handler(
    handlerFunc:
        (context, Map<String, dynamic> params) =>
            RoomDetailPage(roomId: params['roomId'][0]),
  );

  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHander);
    router.define(login, handler: _loginHander);
    router.define(register, handler: _registerHander);
    router.define(roomDetail, handler: _roomDetailHander);

    // 404
    router.notFoundHandler = _notFoundHander;
  }
}
