import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rectangulo extends StatelessWidget {
  final String titulo;

  const Rectangulo({ 
    @required this.titulo
  });


  @override
  Widget build(BuildContext context) {
    return BounceInLeft(
      child: RawMaterialButton(
          onPressed: (){},
              child: Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          decoration: BoxDecoration(
            color: Color(0xffF2BF37),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xffF8E18D),
                Color(0xffF2BF37),
              ],
            ),
            //Sombra
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color(0xffC09154),
                offset: Offset(0, 3),
                blurRadius: 1,
                spreadRadius: 2
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,            
                children: <Widget>[
                  FaIcon(FontAwesomeIcons.award,color: Colors.white,),
                  Text(titulo,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),textAlign: TextAlign.center,
                          ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}