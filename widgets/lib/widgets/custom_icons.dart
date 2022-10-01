

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomIcons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          CupertinoIcons.ant,
          size: 100,
          color: Colors.blueAccent,
        ),
      ),
    );
  }

}