import 'package:flutter/material.dart';
import 'package:rork_wiki/gen/assets.gen.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
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
