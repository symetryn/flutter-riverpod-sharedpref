import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr("Skeleton")),
      ),
      body: Center(
        child: Text(
          tr("Hello world"),
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
