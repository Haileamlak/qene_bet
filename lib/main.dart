import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qene_bet/routes/word_list.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ቅኔ ቤት',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
        textTheme: TextTheme(
          titleSmall: GoogleFonts.abyssinicaSil(),
          titleMedium: GoogleFonts.abyssinicaSil(),
          titleLarge: GoogleFonts.abyssinicaSil(),
        ),
        listTileTheme: ListTileThemeData(
          tileColor: Colors.white,
          titleTextStyle:
              GoogleFonts.abyssinicaSil(fontSize: 16, color: Colors.lightBlue),
          subtitleTextStyle: GoogleFonts.abyssinicaSil(color: Colors.black45),
          leadingAndTrailingTextStyle:
              GoogleFonts.abyssinicaSil(color: Colors.grey),
        ),
      ),
      home: const MyHomePage(title: 'ቅኔ ቤት'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.lightBlue),
        ),
      ),
      drawer: const Drawer(),
      body: const Center(
        child: WordList(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
