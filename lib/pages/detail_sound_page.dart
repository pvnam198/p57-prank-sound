import 'package:flutter/material.dart';

import '../model/sound.dart';
import '../model/sound_package.dart';
import '../source/sound_package_source.dart';
import '../widget/item_sound.dart';
import '../widget/item_sound_package.dart';

class DetailSoundPage extends StatefulWidget {
  static const routeName = '/DetailSoundPage';
  const DetailSoundPage({Key? key}) : super(key: key);
  @override
  State<DetailSoundPage> createState() => _DetailSoundPage();
}

class _DetailSoundPage extends State<DetailSoundPage> {

  @override
  Widget build(BuildContext context) {
    _DetailSoundPage();
    final args = ModalRoute.of(context)!.settings.arguments as List<Sound>;

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(args.length,
                        (index) => ItemSound(args[index]))))
          ],
        ),
      ),
    );
  }
}


