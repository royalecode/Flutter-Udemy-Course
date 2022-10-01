import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.black,
      ),
      child: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: Container(
                    color: Colors.green,
                    height: 100,
                    child: const Text("GREEN"),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                const Positioned(
                  bottom: 0,
                  child: Text("hi"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
