import 'package:flutter/material.dart';
import 'package:flutter_animated_widget/widgets/align_transition_example.dart';
import 'package:flutter_animated_widget/widgets/animation_box.dart';
import 'package:flutter_animated_widget/widgets/decorated_box_transition_example.dart';
import 'package:flutter_animated_widget/widgets/default_textStyle_transition_example.dart';
import 'package:flutter_animated_widget/widgets/matrix_transition_example.dart';
import 'package:flutter_animated_widget/widgets/positioned_transition_example.dart';
import 'package:flutter_animated_widget/widgets/relative_positioned_transition_example.dart';
import 'package:flutter_animated_widget/widgets/size_transition_example.dart';
import 'package:flutter_animated_widget/widgets/slide_transition_example.dart';

/// Flutter code sample for [SlideTransition].

void main() => runApp(const SlideTransitionExampleApp());

class SlideTransitionExampleApp extends StatelessWidget {
  const SlideTransitionExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter AnimatedWidget ')),
        body: const Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimationBox(
                      heading: 'SlideTransition Sample',
                      child: SlideTransitionExample()),
                  AnimationBox(
                      heading: 'MatrixTransition Sample',
                      child: MatrixTransitionExample()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimationBox(
                      heading: 'Positioned Transition Sample',
                      child: PositionedTransitionExample()),
                  AnimationBox(
                      heading: 'Relative Positioned Sample',
                      child: RelativePositionedTransitionExample())
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimationBox(
                      heading: 'SizeTransition Sample',
                      child: SizeTransitionExample()),
                  AnimationBox(
                      heading: 'Decorated Box Transition Sample',
                      child: DecoratedBoxTransitionExample())
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimationBox(
                      heading: 'Align Transition Sample',
                      child: AlignTransitionExample()),
                  AnimationBox(
                      heading: 'Default TextStyle Transition Sample',
                      child: DefaultTextStyleTransitionExample())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
