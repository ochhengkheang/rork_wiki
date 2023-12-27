import 'package:flutter/material.dart';
import 'package:rork_wiki/gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rork Wiki'),
      ),
      body: Center(
        child: Column(
          children: [
            Assets.logos.rorkWikiLogoLightLandscape.image(),
            const Text(
              'Rork Wiki',
              style: TextStyle(fontWeight: FontWeight.w900),
            )
          ],
        ),
      ),
    );
  }
}
