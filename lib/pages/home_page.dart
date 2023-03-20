import 'package:flutter/material.dart';

import '../model/sound_package.dart';
import '../source/sound_package_source.dart';
import '../widget/item_sound_package.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<SoundPackage> soundPackages = SoundPackageSource.soundsPackages;

  @override
  Widget build(BuildContext context) {
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
                    children: List.generate(soundPackages.length,
                        (index) => ItemSoundPackage(soundPackages[index]))))
          ],
        ),
      ),
    );
  }
}
