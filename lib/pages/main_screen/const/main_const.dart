import 'package:uidesign1to100/util/export.dart';

final List<Widget> screen = [DayOne(), Demo(), Demo3()];

// Minimal gradients in monochrome
final List<LinearGradient> gradients = [
  const LinearGradient(
    colors: [Color(0xFF0D0D0D), Color(0xFF1A237E)], // black → deep indigo
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  const LinearGradient(
    colors: [Color(0xFF0D47A1), Color(0xFF000000)], // royal blue → black
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  const LinearGradient(
    colors: [Color(0xFF1A237E), Color(0xFF0D0D0D)], // indigo → black
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
];
