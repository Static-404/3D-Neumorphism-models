import 'package:flutter/material.dart';

class NeuToggler extends StatefulWidget {
  const NeuToggler({super.key});

  @override
  State<NeuToggler> createState() => _NeuTogglerState();
}

class _NeuTogglerState extends State<NeuToggler> {

  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode? Colors.grey.shade900 : Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Icon(
                Icons.apple,
                size: 100,
                color: darkMode ? Colors.white : Colors.black,
              ),
              decoration: BoxDecoration(
                  color: darkMode ? Colors.grey.shade900 : Colors.grey.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: darkMode ? Colors.grey.shade900 : Colors.grey.shade500,
                      offset: Offset(5.0, 5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                        offset: Offset(-5.0, -5.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                        color: darkMode ? Colors.grey.shade700 : Colors.white
                    ),
                  ]),
            ),
            const SizedBox(height: 50,),
            //The Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      darkMode = true;
                    });
                  },
                  child: Text(
                    'Dark',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      darkMode = false;
                    });
                  },
                  child: Text(
                    'Light',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
