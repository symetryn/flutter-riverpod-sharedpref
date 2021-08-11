import 'package:flutter/material.dart';
import 'package:flutter_skeleton/controllers/auth/auth_controller.dart';
import 'package:flutter_skeleton/screens/auth/auth.dart';
import 'package:flutter_skeleton/utils/navigator_keys.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home/home.dart';

class IndexScreen extends ConsumerWidget {
  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case "/":
            return HomeScreen();
        }
        return Container();
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(authControllerProvider).maybeWhen(
      user: (user) {
        if (user != null) {
          return Navigator(
            key: NavigatorKeys.homeNavigator,
            onGenerateRoute: _onGenerateRoute,
          );
        }
        return AuthScreen();
      },
      orElse: () {
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
