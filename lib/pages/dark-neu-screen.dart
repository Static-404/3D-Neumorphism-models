import 'package:flutter/material.dart';

class DarkNeu extends StatelessWidget {
  const DarkNeu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,

      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Icon(Icons.apple, size: 100, color: Colors.white,),
          decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade900,
                  offset: Offset(5.0, 5.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                    offset: Offset(-5.0, -5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                    color: Colors.grey.shade700
                ),
              ]
          ),
        ),
      ),
    );
  }
}
