import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:walking/walk_container.dart';

void main() {
  runApp(const MaterialApp(
    title: 'ًWalking',
    home: WalkContainerScerrn(),
  ));
}

class WalkContainerScerrn extends StatefulWidget {
  const WalkContainerScerrn({super.key});
  @override
  State<WalkContainerScerrn> createState() => _WalkContainerScerrnState();
}

class _WalkContainerScerrnState extends State<WalkContainerScerrn> {
  int counter = 0;
  Timer? timer;
  Random random = Random();
  List str = [
    "😀",
    "😁",
    "😂",
    "🤣",
    "😃",
    "😄",
    "😅",
    "😆",
    "😉",
    "😊",
    "😋",
    "😎",
    "😍",
    "😘",
    "🥰"
  ];

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 800), (Timer t) {
      setState(() {
        counter++;
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Color getRandomColor() => Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 36,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: WalkContainer(
                colors: [
                  getRandomColor(),
                  getRandomColor(),
                  getRandomColor(),
                  getRandomColor(),
                  getRandomColor()
                ],
                width: 150,
                height: 150,
                thicken: 10,
                angle: random.nextDouble() * 360,
                reverse: index % 2 == 0 ? true : false,
                curve: index % 2 == 0 ? Curves.bounceIn : Curves.bounceOut,
                child: Text(
                  str[(counter + index) % str.length],
                  style: const TextStyle(fontSize: 50),
                )),
          );
        },
      ),
    );
  }
}
