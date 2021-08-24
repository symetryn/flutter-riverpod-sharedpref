import 'package:flutter/material.dart';
import 'package:flutter_skeleton/screens/home/anime.dart';
import 'package:flutter_skeleton/screens/home/favourite.dart';
import 'package:flutter_skeleton/utils/navigator_keys.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case "/":
            return AnimeScreen();
          case "/favourites":
            return FavouriteScreen();
        }
        return Container();
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Navigator(
      key: NavigatorKeys.homeNavigator,
      onGenerateRoute: _onGenerateRoute,
    );
  }
}
