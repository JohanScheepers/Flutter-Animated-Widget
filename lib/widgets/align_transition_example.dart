import 'package:flutter/material.dart';

class AlignTransitionExample extends StatefulWidget {
  const AlignTransitionExample({super.key});

  @override
  State<AlignTransitionExample> createState() => _AlignTransitionExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _AlignTransitionExampleState extends State<AlignTransitionExample>
    with TickerProviderStateMixin {
  // Using `late final` for lazy initialization. See
  // https://dart.dev/null-safety/understanding-null-safety#lazy-initialization.
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<AlignmentGeometry> _animation = Tween<AlignmentGeometry>(
    begin: Alignment.bottomLeft,
    end: Alignment.center,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    ),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: AlignTransition(
        alignment: _animation,
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: FlutterLogo(size: 50.0),
        ),
      ),
    );
  }
}
