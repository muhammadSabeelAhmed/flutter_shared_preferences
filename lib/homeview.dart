import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storageclass/childview.dart';
import 'package:storageclass/services/storage.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextField(
            controller: inputController,
          ),
          ElevatedButton(
              onPressed: () {
                Storage.addData(inputController.text);
              },
              child: Text("Add Data to storage")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChildView()),
                );
              },
              child: Text("Open Child View")),
        ],
      ),
    );
  }
}
