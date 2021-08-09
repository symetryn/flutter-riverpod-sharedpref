import 'package:flutter_skeleton/lib/api.dart';
import 'package:flutter_skeleton/models/anime_chan_model.dart';

class AnimeChanService {
  static Future<AnimeChan> random() async {
    final response = await httpClient.get("/random");
    return AnimeChan.fromMap(response.data);
  }
}
