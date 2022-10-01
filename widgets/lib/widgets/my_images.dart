

import 'package:flutter/material.dart';

class MyImages extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Image.asset(
            'assets/images/goku.png',
          ),
        ),
      ),
    );
  }

}