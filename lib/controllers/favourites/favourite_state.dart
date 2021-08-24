import 'package:flutter_skeleton/models/anime_chan/anime_chan_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "favourite_state.freezed.dart";

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState.loading() = _FavouriteStateLoading;
  const factory FavouriteState.data(List<AnimeChan> chan) = _FavouriteStateData;
  const factory FavouriteState.error(String error) = _FavouriteStateError;
}
