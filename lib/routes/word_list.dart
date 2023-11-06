import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_fonts/google_fonts.dart';
import 'package:qene_bet/models/verb.dart';

class WordList extends StatefulWidget {
  const WordList({super.key});

  @override
  State<WordList> createState() => _WordListState();
}

class _WordListState extends State<WordList> {
  List<Verb> verbs = [];

  @override
  void initState() {
    super.initState();
    getWords();
  }

  void getWords() async {
    final words = await loadAsset();


    List<dynamic> jsonWords = jsonDecode(words);
    verbs = jsonWords.map((value) => Verb.fromJson(value)).toList();
    setState(() {});
  }

  Future<String> loadAsset() async {
    return await rootBundle.loadString('lib/assets/word_list.json');
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(left: 10, right: 5),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.05))),
          child: ListTile(
            key: Key("$index"),
            title: RichText(
              text: TextSpan(
                text: verbs[index].word,
                style: GoogleFonts.abyssinicaSil(fontSize: 16,color: Colors.lightBlue),
                children: [
                  TextSpan(
                    text: ' (${verbs[index].family})',
                    style:  GoogleFonts.abyssinicaSil(fontSize: 10, color: Colors.black45),
                  ),
                ],
              ),
            ),
            subtitle: Text(verbs[index].inAmharic),
            trailing: Text(verbs[index].partOfSpeech),
          ),
        );
      },
      itemCount: verbs.length,
    );
  }
}
