import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PlayerBox extends StatefulWidget {
  const PlayerBox({super.key});

  @override
  State<PlayerBox> createState() => _PlayerBoxState();
}


class _PlayerBoxState extends State<PlayerBox> {

  double boxX = 0;
  double boxY = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            boxX += details.delta.dx;
            boxY += details.delta.dy;              
          });
        },
        child: Stack(
          children: [
            Positioned(
              left: boxX,
              top: boxY,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),      
            ),
          ] 
        ),
      ),
    );
  }
}