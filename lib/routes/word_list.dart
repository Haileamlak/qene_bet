import 'package:flutter/material.dart';

class WordList extends StatelessWidget {
  const WordList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const ListTile(
          key: Key("key"),
          title: Text("Ketele"),
          subtitle: Text("Gedele"),
          trailing: Text("Noun"),
        );
      },
      itemCount: 5,
    );
  }
}
