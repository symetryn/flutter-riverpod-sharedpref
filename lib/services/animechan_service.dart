import 'package:flutter_skeleton/lib/api.dart' as api;
import 'package:flutter_skeleton/models/anime_chan_model.dart';

class AnimeChanService {
  static Future<AnimeChan> random() async {
    final response = await api.httpClient.get("/random");
    return AnimeChan.fromMap(response.data);
  }
}
