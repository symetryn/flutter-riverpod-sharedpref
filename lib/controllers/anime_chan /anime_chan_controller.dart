import 'package:hooks_riverpod/hooks_riverpod.dart';

final animeChanControllerProvider =
    Provider((ref) => AnimeChanController(ref.read));

class AnimeChanController extends StateNotifier {
  final Reader _read;

  AnimeChanController(this._read) : super(null);
}
