import 'package:flutter/material.dart';

class HighlightCyclingText extends StatefulWidget {
  final List<String> lines;
  final TextStyle activeStyle;
  final TextStyle inactiveStyle;
  final Duration switchDuration;

  const HighlightCyclingText({
    super.key,
    required this.lines,
    required this.activeStyle,
    required this.inactiveStyle,
    this.switchDuration = const Duration(seconds: 1),
  });

  @override
  State<HighlightCyclingText> createState() => _HighlightCyclingTextState();
}

class _HighlightCyclingTextState extends State<HighlightCyclingText> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _startCycling();
  }

  void _startCycling() async {
    while (mounted) {
      await Future.delayed(widget.switchDuration);
      setState(() {
        _currentIndex = (_currentIndex + 1) % widget.lines.length;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: List.generate(widget.lines.length, (index) {
        final isActive = index == _currentIndex;
        return AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 400),
          style: isActive ? widget.activeStyle : widget.inactiveStyle,
          child: Text(widget.lines[index], textAlign: TextAlign.center),
        );
      }),
    );
  }
}
