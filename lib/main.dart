import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text(
          'Game',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        backgroundColor: Colors.cyan[700],
      ),
      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  // ignore: unused_local_variable
  int leftImageNumber = 1;
  int rightImageNumber = 1;
  void ChangeImage() {
    leftImageNumber =
        Random().nextInt(8) + 1; // 0 to 8 , 0 + 1 = 1.... 8 + 1 = 9
    rightImageNumber =
        Random().nextInt(8) + 1; // 0 to 8 , 0 + 1 = 1.... 8 + 1 = 9
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumber
              ? 'Goal accomplished'
              : 'Try again',
          style: TextStyle(fontSize: 42.0, color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          ChangeImage();
                        });
                      },
                      child: Image.asset('images/image-$leftImageNumber.png'))),
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          ChangeImage();
                        });
                      },
                      child: Image.asset('images/image-$rightImageNumber.png')))
            ],
          ),
        )
      ],
    );
  }
}
