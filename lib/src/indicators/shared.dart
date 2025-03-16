part of 'indicators.dart';

@immutable
class FortuneIndicator {
  final Alignment alignment;
  final Widget child;

  const FortuneIndicator({
    this.alignment = Alignment.center,
    required this.child,
  });

  Offset animate(double ani) {
    if (alignment == Alignment.topCenter) return Offset(0, ani);
    if (alignment == Alignment.bottomCenter) return Offset(0, -(ani));
    if (alignment == Alignment.centerLeft) return Offset(ani, 0);
    if (alignment == Alignment.centerRight) return Offset(-ani, 0);
    return Offset.zero;
  }

  @override
  int get hashCode => hash2(alignment, child);

  @override
  bool operator ==(Object other) {
    return other is FortuneIndicator &&
        alignment == other.alignment &&
        child == other.child;
  }
}
