import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_skeleton/screens/auth/login.dart';
import 'package:flutter_skeleton/screens/auth/register.dart';
import 'package:flutter_skeleton/screens/index.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('ja')],
      path: 'assets/translations',
      startLocale: Locale('ja'),
      child: ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

final pageRoutes = <String, WidgetBuilder>{
  "/": (_) => IndexScreen(),
  "/login": (_) => LoginScreen(),
  "/register": (_) => RegisterScreen(),
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: pageRoutes,
      initialRoute: "/login",
    );
  }
}
