// ignore_for_file: prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DavulApp());
}

class DavulApp extends StatelessWidget {
  const DavulApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DumpPage(),
    );
  }
}

class DumpPage extends StatefulWidget {
  const DumpPage({super.key});

  @override
  State<DumpPage> createState() => _DumpPageState();
}

class _DumpPageState extends State<DumpPage> {
  final player = AudioPlayer();
  void calsarki(String soundName) {
    player.play(AssetSource("$soundName.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  buildExpanded("how", Colors.blue, 1),
                  buildExpanded("woo", Colors.red, 1),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildExpanded("clap2", Colors.yellow, 2),
                  buildExpanded("ridebel", Colors.green, 1),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildExpanded("bip", Colors.pink, 1),
                  buildExpanded("clap1", Colors.purple, 2),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildExpanded("crash", Colors.orange, 1),
                  buildExpanded("oobah", Colors.grey, 2),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildExpanded("clap2", Colors.yellow, 1),
                  buildExpanded("clap1", Colors.purple, 2),
                  buildExpanded("oobah", Colors.grey, 1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildExpanded(String soundName, Color renk, int flex2) {
    return Expanded(
      flex: flex2,
      child: TextButton(
        onPressed: () {
          calsarki(soundName);
        },
        child: Container(
          color: renk,
        ),
      ),
    );
  }
}
