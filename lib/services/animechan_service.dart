import 'package:flutter/material.dart';
import 'package:flutter_skeleton/lib/api.dart';
import 'package:flutter_skeleton/models/anime_chan/anime_chan_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

final animeChanServiceProvider = Provider((ref) => AnimeChanService());

class AnimeChanService {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<AnimeChan> random() async {
    final response = await httpClient.get("/random");
    return AnimeChan.fromJson(response.data);
  }

  Future<List<AnimeChan>> getFavourites() async {
    final SharedPreferences prefs = await _prefs;
    final jsonString = prefs.getString("favourites");
    if (jsonString == null) {
      return [];
    }
    final jsonData = json.decode(jsonString);

    final List<AnimeChan> list = [];
    jsonData.forEach((element) {
      list.add(AnimeChan.fromJson(element));
    });

    return list;
  }

  Future<bool> storeFavourite(AnimeChan anime) async {
    final SharedPreferences prefs = await _prefs;
    final List<AnimeChan> list = await this.getFavourites();
    list.add(anime);
    final List<Map<String, dynamic>> jsonList = [];
    list.forEach((model) => jsonList.add(model.toJson()));

    final jsonData = json.encode(jsonList);

    return prefs.setString("favourites", jsonData);
  }

  Future<bool> removeFavourite(String anime) async {
    final SharedPreferences prefs = await _prefs;
    final List<AnimeChan> list = await this.getFavourites();
    final filteredList = list.where((element) => element.anime != anime);
    final List<Map<String, dynamic>> jsonList = [];
    filteredList.forEach((model) => jsonList.add(model.toJson()));
    final jsonData = json.encode(jsonList);
    return prefs.setString("favourites", jsonData);
  }
}
