import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class PathPainter extends CustomPainter {
  final List<Position> positions;

  PathPainter(this.positions);

  @override
  void paint(Canvas canvas, Size size) {
    if (positions.isEmpty) return;

    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final path = Path();

    final minLat =
        positions.map((p) => p.latitude).reduce((a, b) => a < b ? a : b);
    final maxLat =
        positions.map((p) => p.latitude).reduce((a, b) => a > b ? a : b);
    final minLng =
        positions.map((p) => p.longitude).reduce((a, b) => a < b ? a : b);
    final maxLng =
        positions.map((p) => p.longitude).reduce((a, b) => a > b ? a : b);

    debugPrint(
        'MinLat: $minLat, MaxLat: $maxLat, MinLng: $minLng, MaxLng: $maxLng');

    final normalizedPoints = positions.map((pos) {
      final x = (maxLng - minLng) == 0
          ? size.width / 2
          : (pos.longitude - minLng) / (maxLng - minLng) * size.width;

      final y = (maxLat - minLat) == 0
          ? size.height / 2
          : (pos.latitude - minLat) / (maxLat - minLat) * size.height;

      debugPrint('Normalized Point: x=$x, y=$y');
      return Offset(x, y);
    }).toList();

    // Построение пути
    for (int i = 0; i < normalizedPoints.length; i++) {
      if (i == 0) {
        path.moveTo(normalizedPoints[i].dx, normalizedPoints[i].dy);
      } else {
        path.lineTo(normalizedPoints[i].dx, normalizedPoints[i].dy);
      }
    }

    // Отрисовка пути
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Обеспечивает перерисовку на каждое обновление состояния
  }
}