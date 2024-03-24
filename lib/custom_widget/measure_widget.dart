import 'package:flutter/material.dart';

class OrigChildWH extends StatelessWidget {
  final Widget Function(BuildContext context, Size size, Widget? child) builder;
  final Widget? child;
  const OrigChildWH({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return ChildSizeNotifier(builder: builder);
    });
  }
}

class ChildSizeNotifier extends StatelessWidget {
  final ValueNotifier<Size> notifier = ValueNotifier(const Size(0, 0));
  final Widget Function(BuildContext context, Size size, Widget? child) builder;
  final Widget? child;
  ChildSizeNotifier({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
          (_) {
        notifier.value = (context.findRenderObject() as RenderBox).size;
      },
    );
    return ValueListenableBuilder(
      valueListenable: notifier,
      builder: builder,
      child: child,
    );
  }
}


class VerticalLine extends CustomPainter {


  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color =  Colors.blueGrey;
    paint.strokeWidth = 2;
    paint.strokeCap = StrokeCap.square;

    Offset startingOffset = Offset(5 , 0);
    Offset endingOffset = Offset(5,size.height);

    canvas.drawLine(startingOffset, endingOffset, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}