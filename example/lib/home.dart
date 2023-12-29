import 'package:audio_router/audio_router.dart';
import 'package:flutter/material.dart';

AudioRouter audioRouter = AudioRouter();

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Audio Router Example')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Test Audio Router'),
            onTap: () async {
              audioRouter.testAudioRouter();
            },
          ),
        ],
      ),
    );
  }
}
