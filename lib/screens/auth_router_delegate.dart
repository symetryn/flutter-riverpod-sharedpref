import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_skeleton/controllers/auth/auth_controller.dart';
import 'package:flutter_skeleton/screens/auth/auth.dart';
import 'package:flutter_skeleton/screens/home/home.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends Page {
  @override
  String? get name => "HOME";

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(builder: (ctx) => HomeScreen(), settings: this);
  }
}

class AuthPage extends Page {
  @override
  String? get name => "AUTH";

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(builder: (ctx) => AuthScreen(), settings: this);
  }
}

class AuthRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  static final key = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return StreamBuilder(
        stream: ref.watch(authControllerProvider.notifier).userStream,
        builder: (context, AsyncSnapshot<User?> stream) {
          if (stream.connectionState == ConnectionState.active) {
            final loggedIn = stream.hasData;
            print("loggedIn: ");
            print(loggedIn.toString());
            return Navigator(
              key: key,
              pages: [
                if (loggedIn) HomePage(),
                if (!loggedIn) AuthPage(),
              ],
              onPopPage: (route, result) => route.didPop(result),
            );
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      );
    });
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => key;

  @override
  Future<void> setNewRoutePath(configuration) async {}
}
