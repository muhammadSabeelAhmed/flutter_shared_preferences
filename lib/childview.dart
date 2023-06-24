import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storageclass/services/storage.dart';

class ChildView extends StatelessWidget {
  ChildView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Text("${snapshot.data}");
          } else {
            return CircularProgressIndicator();
          }
        },
        future: Storage.getData(),
      ),
    );
  }
}
