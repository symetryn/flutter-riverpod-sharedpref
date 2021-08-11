import 'package:flutter/material.dart';
import 'package:flutter_skeleton/screens/auth/login.dart';
import 'package:flutter_skeleton/screens/auth/register.dart';
import 'package:flutter_skeleton/utils/navigator_keys.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthScreen extends ConsumerWidget {
  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case "/":
            return LoginScreen();
          case "/register":
            return RegisterScreen();
        }
        return Container();
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Navigator(
      key: NavigatorKeys.loginNavigator,
      onGenerateRoute: _onGenerateRoute,
    );
  }
}
