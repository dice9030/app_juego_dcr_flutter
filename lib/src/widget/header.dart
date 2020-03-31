import 'package:flutter/material.dart';
class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.red,
        child: CustomPaint(
          painter: _headerDiagonalPaint(),
        ),
      );
  }
}
class _headerDiagonalPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  //  var rect = Offset.zero & size;
  //  var gradient = RadialGradient(
  //     center: const Alignment(0.8, -0.6),
  //     radius: 0.9,
  //     colors: [const Color(0xFFFFFF00), const Color(0xFF0099FF)],
  //     // stops: [0.4, 1.0],
  //   );

    final lapiz = Paint();

    lapiz.color = Color(0xffF4C851);
    lapiz.style = PaintingStyle.fill; // pinta el contenido
    lapiz.strokeWidth = 5;// tamaño del lapiz
    final path = new Path();
   
    path.lineTo(0,0);
    path.lineTo(0, size.height);

    path.quadraticBezierTo(size.width * 0.5, size.height * 0.70,size.width ,size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
    // canvas.drawPath(path, lapiz
    // ..shader = gradient.createShader(rect));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}