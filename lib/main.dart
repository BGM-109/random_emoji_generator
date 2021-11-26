import 'package:flutter/material.dart';
import 'dart:math';
import 'package:random_emoji_generator/emoji_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> emojis = [];

  var viewModel = EmojiGenerator();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
      onTap: () {
        var e = viewModel.emojiGenerator(EmojiGenerator.allEmojis);
        var random = Random();
        double top = random.nextDouble() * MediaQuery.of(context).size.height * 0.9;
        double left = random.nextDouble() * MediaQuery.of(context).size.width * 0.9;
        emojis.add(CustomPositioned(emoji: e, top: top, left: left));
        setState(() {});
      },
      child: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Random Emoji Generator ❤️", style: TextStyle(fontSize: 24 ),),
                  Text("Click anywhere on the page to create an emoji")
                ],
              ),
            ),
            ...emojis.map((e) => e),
          ],
        ),
      ),
    ));
  }
}

class CustomPositioned extends StatefulWidget {
  const CustomPositioned(
      {Key? key, required this.emoji, required this.top, required this.left})
      : super(key: key);
  final String emoji;
  final double top;
  final double left;

  @override
  State<CustomPositioned> createState() => _CustomPositionedState();
}

class _CustomPositionedState extends State<CustomPositioned> {
  double _size = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 100));
    _size = 50;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: widget.top,
        left: widget.left,
        child: AnimatedDefaultTextStyle(
          style: TextStyle(fontSize: _size),
          child: Text(widget.emoji),
          duration: const Duration(milliseconds: 1000),
        ));
  }
}
