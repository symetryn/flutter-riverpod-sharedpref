import 'package:flutter_skeleton/controllers/anime_chan/anime_chan_state.dart';
import 'package:flutter_skeleton/models/anime_chan/anime_chan_model.dart';
import 'package:flutter_skeleton/services/animechan_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final animeChanControllerProvider =
    StateNotifierProvider<AnimeChanController, AnimeChanState>(
  (ref) => AnimeChanController(ref.read),
);

class AnimeChanController extends StateNotifier<AnimeChanState> {
  final Reader _read;

  AnimeChanController(this._read) : super(AnimeChanState.loading()) {
    this.random();
  }

  Future<AnimeChan?> random() async {
    state = AnimeChanState.loading();
    try {
      final anime = await _read(animeChanServiceProvider).random();
      state = AnimeChanState.data(anime);
      return anime;
    } catch (e) {
      state = AnimeChanState.error(e.toString());
    }
  }
}
