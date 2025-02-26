import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter_test1/routes.dart';
import 'package:learn_flutter_test1/theme/light.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    FluroRouter router = FluroRouter();
    Routes.configureRoutes(router);
    return MaterialApp(
      onGenerateRoute: router.generator,
      theme: LightTheme.theme,
    );
  }
}
