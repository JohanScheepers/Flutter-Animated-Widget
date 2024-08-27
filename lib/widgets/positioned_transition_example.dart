import 'package:flutter/material.dart';


class PositionedTransitionExample extends StatefulWidget {
  const PositionedTransitionExample({super.key});

  @override
  State<PositionedTransitionExample> createState() =>
      _PositionedTransitionExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _PositionedTransitionExampleState
    extends State<PositionedTransitionExample> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double smallLogo = 25;
    const double bigLogo = 50;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
       const Size biggest = Size(100.0, 100.0);
        return SizedBox(height: 100,width: 200,
          child: SizedBox(height: 100.0,width: 200.0,
            child: Stack(
              children: <Widget>[
                PositionedTransition(
                  rect: RelativeRectTween(
                    begin: RelativeRect.fromSize(
                      const Rect.fromLTWH(0, 0, smallLogo, smallLogo),
                      biggest,
                    ),
                    end: RelativeRect.fromSize(
                      Rect.fromLTWH(biggest.width - bigLogo,
                          biggest.height - bigLogo, bigLogo, bigLogo),
                      biggest,
                    ),
                  ).animate(CurvedAnimation(
                    parent: _controller,
                    curve: Curves.elasticInOut,
                  )),
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: FlutterLogo(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
