import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class WordList extends StatefulWidget {
  const WordList({super.key});

  @override
  State<WordList> createState() => _WordListState();
}


class _WordListState extends State<WordList> {
  @override
  void initState() {
    super.initState();
  }

  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/my_text.txt');
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(left: 5),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.1))),
          child: const ListTile(
            tileColor: Colors.white,
            key: Key("key"),
            title: Text("ቀተለ"),
            subtitle: Text("ገደለ"),
            trailing: Text("ስም"),
          ),
        );
      },
      itemCount: 15,
    );
  }
}
