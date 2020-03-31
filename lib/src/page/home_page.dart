import 'package:app_playdariel_flutter/src/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:app_playdariel_flutter/src/widget/fondo.dart';
import 'package:app_playdariel_flutter/src/widget/rectangulo.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Dariel'),
        // ),
        body: Stack(
      children: <Widget>[
        Fondo(),
        Container(
          margin: EdgeInsets.only(top: 100),
          padding: EdgeInsets.all(30),
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: <Widget>[
              Rectangulo(
                titulo: 'Escribe tu nombre',
              ),
              SizedBox(
                height: 20,
              ),

              Rectangulo(
                titulo: 'Juego de arrastre',
              ),
              SizedBox(
                height: 20,
              ),

              Rectangulo(
                titulo: 'Aprende los colors',
              ),
              SizedBox(
                height: 20,
              ),

              Rectangulo(
                titulo: 'Juego de sumas',
              ),
              SizedBox(
                height: 20,
              ),

              

              // Rectangulo(),
            ],
          ),
        ),
      Stack(
        children: <Widget>[
          
          Container(
            height: 150,
            child: Header()
          ),
          Positioned(
            top: 40,
            right: 0,
            child: RawMaterialButton(
              shape: CircleBorder(),
              padding: EdgeInsets.all(15),
              onPressed: (){
                print('object');
              },
              child: FaIcon(FontAwesomeIcons.ellipsisV, color: Colors.white,size: 30,)
              )
          ),
          Positioned(
            top: 55,
            left: 10,
            child: Container(
              width: 70,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.orange,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xffE96534),
                    Color(0xffE85D2A),
                    Color(0xffE96534),
                  ]
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color(0xffDE8365),
                    offset: Offset(0, 3),
                    blurRadius: 0,
                    spreadRadius: 0.1
                  ),
                ]
              ),
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('10',style: TextStyle(color: Colors.yellow, fontSize: 20,fontWeight: FontWeight.bold),),
                  FaIcon(FontAwesomeIcons.star, color: Colors.yellow,size: 18,),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('JUEGO DE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),textAlign: TextAlign.center,
                        ),
                Text('Dariel',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),textAlign: TextAlign.center,
                        ),
              ],
            ),
          )
        ],
      ),
        
      ],
    ));
  }
}
