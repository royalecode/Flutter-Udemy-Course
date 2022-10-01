import 'package:flutter/material.dart';

class MySafeArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.blue,
                width: double.infinity,
                child: Column(
                  children: const [
                    SafeArea(
                      bottom: false,
                      child: Text("test@test.com"),
                    ),
                    Text("test@test.com")
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
