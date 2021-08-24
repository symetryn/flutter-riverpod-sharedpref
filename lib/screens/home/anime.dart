import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_skeleton/controllers/anime_chan/anime_chan_controller.dart';
import 'package:flutter_skeleton/controllers/auth/auth_controller.dart';
import 'package:flutter_skeleton/controllers/favourites/favourites_controller.dart';
import 'package:flutter_skeleton/widgets/atoms/chan_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AnimeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(tr("Skeleton")),
        actions: [
          Consumer(
            builder: (context, ref, _) {
              return IconButton(
                icon: Icon(Icons.logout),
                onPressed: () async {
                  await ref.read(authControllerProvider.notifier).signOut();
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello world".tr(),
              style: textTheme.headline5,
            ),
            SizedBox(height: 10),
            ref.watch(animeChanControllerProvider).when(
                loading: () => Container(
                      margin: const EdgeInsets.all(20),
                      child: CircularProgressIndicator(),
                    ),
                data: (chan) {
                  return Column(
                    children: [
                      ChanItem(chan: chan),
                      ElevatedButton(
                        onPressed: () async {
                          await ref
                              .read(favouritesControllerProvider.notifier)
                              .store(chan);
                          final snackBar = SnackBar(
                            duration: Duration(seconds: 2),
                            backgroundColor: Theme.of(context).primaryColor,
                            content: Text('Stored ' + chan.anime),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Text("Save Favourites"),
                      )
                    ],
                  );
                },
                error: (err) => Text(err)),
            ElevatedButton(
              onPressed: () =>
                  ref.read(animeChanControllerProvider.notifier).random(),
              child: Text("Reload"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/favourites"),
              child: Text("Favourites"),
            ),
          ],
        ),
      ),
    );
  }
}
