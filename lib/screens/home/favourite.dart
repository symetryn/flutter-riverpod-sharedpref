import 'package:flutter/material.dart';
import 'package:flutter_skeleton/controllers/favourites/favourites_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavouriteScreen extends ConsumerStatefulWidget {
  FavouriteScreen({Key? key}) : super(key: key);

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends ConsumerState<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Favourites"),
          actions: [],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ref.watch(favouritesControllerProvider).when(
                loading: () => Container(
                      margin: const EdgeInsets.all(20),
                      child: CircularProgressIndicator(),
                    ),
                data: (chan) {
                  if (chan.length == 0) {
                    return Column(
                      children: [
                        Center(
                          child: Text("Empty"),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.pushNamed(context, "/"),
                          child: Text("Go back"),
                        )
                      ],
                    );
                  }
                  return ListView.builder(
                      itemCount: chan.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Center(
                              child: Text(
                            chan[index].anime,
                            textAlign: TextAlign.center,
                          )),
                          onTap: () {
                            final snackBar = SnackBar(
                              duration: Duration(seconds: 2),
                              backgroundColor: Theme.of(context).primaryColor,
                              content: Text('Removed ' + chan[index].anime),
                            );
                            ref
                                .read(favouritesControllerProvider.notifier)
                                .remove(chan[index]);
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                        );
                      });
                },
                error: (err) => Text(err)),
          ],
        ));
  }
}
