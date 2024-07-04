import 'package:flutter/material.dart';

class CustomProgressBar extends StatefulWidget {
  @override
  _CustomProgressBarState createState() => _CustomProgressBarState();
}

class _CustomProgressBarState extends State<CustomProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 300,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300],
          ),
          child: Stack(
            children: <Widget>[
              Container(
                width: 300 * _animation.value,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                ),
                child: Center(
                  child: Text(
                    '${(_animation.value * 100).toStringAsFixed(1)}%',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  '${(_animation.value * 100).toStringAsFixed(1)}%',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
