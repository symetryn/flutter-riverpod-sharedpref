import 'package:flutter_skeleton/controllers/anime_chan/anime_chan_state.dart';
import 'package:flutter_skeleton/models/anime_chan/anime_chan_model.dart';
import 'package:flutter_skeleton/services/animechan_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'favourite_state.dart';

final favouritesControllerProvider =
    StateNotifierProvider<FavouriteController, FavouriteState>(
  (ref) => FavouriteController(ref.read),
);

class FavouriteController extends StateNotifier<FavouriteState> {
  final Reader _read;

  FavouriteController(this._read) : super(FavouriteState.loading()) {
    this.getFavourites();
  }

  Future<List<AnimeChan>?> getFavourites() async {
    state = FavouriteState.loading();
    try {
      final anime = await _read(animeChanServiceProvider).getFavourites();
      state = FavouriteState.data(anime);
      return anime;
    } catch (e) {
      print(e);
      state = FavouriteState.error(e.toString());
    }
  }

  Future<bool?> store(AnimeChan animeChan) async {
    try {
      bool stored =
          await _read(animeChanServiceProvider).storeFavourite(animeChan);
      await getFavourites();
      return stored;
    } catch (e) {
      state = FavouriteState.error(e.toString());
    }
  }

  Future<bool?> remove(AnimeChan animeChan) async {
    try {
      await _read(animeChanServiceProvider).removeFavourite(animeChan.anime);
      await getFavourites();
    } catch (e) {
      state = FavouriteState.error(e.toString());
    }
  }
}
