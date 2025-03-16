part of 'indicators.dart';

class TriangleIndicator extends StatelessWidget {
  final Color? color;
  final double width;
  final double height;
  final double elevation;
  final Alignment alignment;

  const TriangleIndicator({
    Key? key,
    this.color,
    this.width = 36.0,
    this.height = 36.0,
    this.elevation = 2,
    this.alignment = Alignment.topCenter,
  }) : super(key: key);

  double _getRotationAngle() {
    if (alignment == Alignment.topCenter) return _math.pi;
    if (alignment == Alignment.bottomCenter) return _math.pi * 2;
    if (alignment == Alignment.centerLeft) return -_math.pi * 1.5;
    if (alignment == Alignment.centerRight) return _math.pi * 1.5;
    return 0; // Default: No rotation
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Transform.rotate(
      angle: _getRotationAngle(),
      child: SizedBox(
        width: width,
        height: height,
        child: _Triangle(
          color: color ?? theme.colorScheme.secondary,
          elevation: elevation,
        ),
      ),
    );
  }
}
