import 'package:flutter_skeleton/lib/api.dart';
import 'package:flutter_skeleton/models/anime_chan/anime_chan_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final animeChanServiceProvider = Provider((ref) => AnimeChanService());

class AnimeChanService {
  static Future<AnimeChan> random() async {
    final response = await httpClient.get("/random");
    return AnimeChan.fromMap(response.data);
  }
}
