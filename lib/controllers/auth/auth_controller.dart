import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_skeleton/controllers/auth/auth_state.dart';
import 'package:flutter_skeleton/services/auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authControllerProvider = StateNotifierProvider<AuthController, AuthState>(
  (ref) => AuthController(ref.read),
);

class AuthController extends StateNotifier<AuthState> {
  final Reader _read;
  StreamSubscription<User?>? _authStateChangeSubscription;

  AuthController(this._read) : super(AuthState.loading()) {
    _authStateChangeSubscription?.cancel();
    state = AuthState.loading();
    _authStateChangeSubscription =
        _read(authServiceProvider).authStateChanges.listen(
      (user) {
        state = AuthState.user(user);
      },
    );
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
    try {
      await _read(authServiceProvider).signIn(email: email, password: password);
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> signOut() async {
    try {
      await _read(authServiceProvider).signOut();
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }
}
