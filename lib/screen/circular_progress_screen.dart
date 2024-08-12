import 'dart:math';

import 'package:flutter/material.dart';

import '../layout/default_layout.dart';

class CircularProgressScreen extends StatelessWidget {
  const CircularProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: '/circularprogress',
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          child: CircularProgressIndicatorWithDot(progress: 0.23),
        ),
      ),
    );
  }
}

class CircularProgressIndicatorWithDot extends StatefulWidget {
  final double progress;

  CircularProgressIndicatorWithDot({required this.progress, super.key});

  @override
  _CircularProgressIndicatorWithDotState createState() =>
      _CircularProgressIndicatorWithDotState();
}

class _CircularProgressIndicatorWithDotState
    extends State<CircularProgressIndicatorWithDot>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 100),
    );

    _controller.value = widget.progress;

    _controller.addListener(() {
      if (_controller.value == 1.0) {
        _controller.stop();
      }
    });

    // 애니메이션을 한 번 실행
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          painter: CircularTimerPainter(_controller.value),
          // size: Size(100, 100), // 크기를 50x50으로 설정
          child: Center(
            child: Text(
              '${(_controller.value * 100).toInt()}%',
              style: TextStyle(
                fontSize: 26, // 폰트 크기를 원 크기에 맞게 줄임
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }
}

class CircularTimerPainter extends CustomPainter {
  final double progress;

  CircularTimerPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    //print('${progress}');
    Paint circlePaint = Paint()
      ..color = Colors.grey.shade200
      ..strokeWidth = 20
      ..style = PaintingStyle.stroke;

    Paint progressPaint = Paint()
      ..color = Colors.green
      ..strokeWidth = 13
      ..style = PaintingStyle.stroke;

    Paint dotPaint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2) - 10;

    canvas.drawCircle(center, radius, circlePaint);

    double sweepAngle = 2 * pi * progress;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        sweepAngle, false, progressPaint);

    double dotX = center.dx + radius * cos(sweepAngle - pi / 2);
    double dotY = center.dy + radius * sin(sweepAngle - pi / 2);
    Offset dotPosition = Offset(dotX, dotY);

    canvas.drawCircle(Offset(dotX, dotY), 20, dotPaint);

    // Draw percentage text inside the dot
    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    );
    final textSpan = TextSpan(
      text: '${(progress * 100).toInt()}%',
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    final textWidth = textPainter.width;
    final textHeight = textPainter.height;
    textPainter.paint(
        canvas,
        Offset(
            dotPosition.dx - textWidth / 2, dotPosition.dy - textHeight / 2));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
