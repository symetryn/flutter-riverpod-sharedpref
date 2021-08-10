import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_skeleton/services/auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authControllerProvider = StateNotifierProvider(
  (ref) => AuthController(ref.read),
);

class AuthController extends StateNotifier<User?> {
  final Reader _read;
  StreamSubscription<User?>? _authStateChangeSubscription;

  AuthController(this._read) : super(null) {
    _authStateChangeSubscription?.cancel();
    _authStateChangeSubscription = _read(authServiceProvider)
        .authStateChanges
        .listen((user) => state = user);
  }

  @override
  void dispose() {
    _authStateChangeSubscription?.cancel();
    super.dispose();
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    await _read(authServiceProvider).signIn(email: email, password: password);
  }

  Future<void> signOut() async {
    await _read(authServiceProvider).signOut();
  }
}
