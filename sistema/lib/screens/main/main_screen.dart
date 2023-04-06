import 'package:flutter/material.dart';

class MainSreen extends StatelessWidget{
  const MainSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: const Text(
                "Hello World!",
                style: TextStyle(color: Colors.black),
                ),
              ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                color:  Colors.blue, 
              ),
            ),
          ],
        )
        )
    );
  }
}