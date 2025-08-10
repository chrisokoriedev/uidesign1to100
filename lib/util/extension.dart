
import 'package:uidesign1to100/util/export.dart';

extension PaddingExtension on Widget {
  Widget pad([double value = 0.0]) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  Widget padSymmetric({double horizontal = 0.0, double vertical = 0.0}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: this,
    );
  }

  Widget padOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
      child: this,
    );
  }
}

extension WidgetAssetOnTapExtension on Widget {
  InkWell onTap({required void Function()? onTap}) {
    return InkWell(
      radius: 0,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: this,
    );
  }
}

extension ColorOpacityExtension on Color {
  Color withOpacityN(double opacity) {
    return withValues(alpha: opacity);
  }
}
