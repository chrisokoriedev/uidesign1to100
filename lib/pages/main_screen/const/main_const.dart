import 'package:uidesign1to100/util/export.dart';

final List<Widget> screen = [DayOne(), Demo(), Demo3()];

// Minimal gradients in monochrome
final List<LinearGradient> gradients = [
  const LinearGradient(
    colors: [Colors.black87, Colors.black54],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
   LinearGradient(
    colors: [Colors.grey.shade900, Colors.grey.shade700],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  const LinearGradient(
    colors: [Colors.black45, Colors.black26],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
];