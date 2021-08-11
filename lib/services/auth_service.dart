import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuthService {
  Stream<User?> get authStateChanges;
  Future<void> signIn({
    required String email,
    required String password,
  });
  User? getCurrentUser();
  Future<void> signOut();
}

final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);
final authServiceProvider = Provider((ref) => AuthService(ref.read));

class AuthService extends BaseAuthService {
  final Reader _read;

  AuthService(this._read);

  @override
  Stream<User?> get authStateChanges =>
      _read(firebaseAuthProvider).authStateChanges();

  @override
  User? getCurrentUser() {
    return _read(firebaseAuthProvider).currentUser;
  }

  @override
  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    await _read(firebaseAuthProvider).signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signOut() async {
    await _read(firebaseAuthProvider).signOut();
  }
}
