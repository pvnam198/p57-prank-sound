import 'package:flutter/material.dart';
import 'package:p57_prank_sound/pages/detail_sound_page.dart';
import 'package:p57_prank_sound/pages/home_page.dart';
import 'package:p57_prank_sound/pages/playing_sound_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Funny Drank Sounds',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        DetailSoundPage.routeName: (context) => const DetailSoundPage(),
        PlayingSoundPage.routeName: (context) => const PlayingSoundPage(),
        '/': (context) => const HomePage(),
      },
    );
  }
}
