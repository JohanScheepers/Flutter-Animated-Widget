import 'package:flutter/material.dart';

class AnimationBox extends StatefulWidget {
  const AnimationBox({super.key, required this.heading, required this.child});

  final String heading;
  final Widget child;

  @override
  State<AnimationBox> createState() => _AnimationBoxState();
}

class _AnimationBoxState extends State<AnimationBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 200,
        decoration: BoxDecoration(
            //color: Colors.black,
            border: Border.all(
              color: Colors.black,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.heading),
            widget.child,
          ],
        ));
  }
}
