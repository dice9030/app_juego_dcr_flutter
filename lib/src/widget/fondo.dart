import 'package:flutter/material.dart';
class Fondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
      
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xff334F8E),
            Color(0xff5278CC),
            Color(0xff5278CC),
            Color(0xff5278CC),
            Color(0xff334F8E),
            
          ],
        )
      ),
    );
  }
}