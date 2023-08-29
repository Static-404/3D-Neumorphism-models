import 'package:flutter/material.dart';

class LightNeu extends StatelessWidget {
  const LightNeu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,

      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Icon(Icons.apple, size: 100,),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.all(Radius.circular(50)),
            boxShadow: [
              BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(5.0, 5.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
              ),
              BoxShadow(
                  offset: Offset(-5.0, -5.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                  color: Colors.white
              ),
            ]
          ),
        ),
      ),
    );
  }
}
