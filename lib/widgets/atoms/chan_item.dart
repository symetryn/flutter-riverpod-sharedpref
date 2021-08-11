import 'package:flutter/material.dart';
import 'package:flutter_skeleton/models/anime_chan/anime_chan_model.dart';

class ChanItem extends StatelessWidget {
  final AnimeChan chan;

  const ChanItem({Key? key, required this.chan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            chan.anime,
            textAlign: TextAlign.center,
            style: textTheme.headline3!.copyWith(color: Colors.redAccent),
          ),
          SizedBox(height: 20),
          Text(
            chan.character,
            style: textTheme.headline6,
          ),
          Text(
            chan.quote,
            textAlign: TextAlign.center,
            style: textTheme.bodyText2!.copyWith(height: 2),
          ),
        ],
      ),
    );
  }
}
