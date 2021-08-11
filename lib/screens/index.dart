import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_skeleton/controllers/auth_controller.dart';
import 'package:flutter_skeleton/models/anime_chan_model.dart';
import 'package:flutter_skeleton/services/animechan_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  Future<AnimeChan> _chan = AnimeChanService.random();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text("Skeleton".tr()),
        actions: [
          Consumer(
            builder: (context, ref, _) {
              return IconButton(
                icon: Icon(Icons.logout),
                onPressed: () async {
                  await ref.read(authControllerProvider.notifier).signOut();
                  Navigator.pushReplacementNamed(context, "login");
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
            FutureBuilder(
              future: _chan,
              builder: (context, AsyncSnapshot<AnimeChan?> snapshot) {
                if (snapshot.hasData &&
                    snapshot.connectionState == ConnectionState.done) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          snapshot.data?.anime ?? "",
                          textAlign: TextAlign.center,
                          style: textTheme.headline3!
                              .copyWith(color: Colors.redAccent),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data?.character ?? "",
                          style: textTheme.headline6,
                        ),
                        Text(
                          snapshot.data?.quote ?? "",
                          textAlign: TextAlign.center,
                          style: textTheme.bodyText2!.copyWith(height: 2),
                        ),
                      ],
                    ),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.all(50),
                  child: CircularProgressIndicator(),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _chan = AnimeChanService.random();
                });
              },
              child: Text("Reload"),
            )
          ],
        ),
      ),
    );
  }
}
