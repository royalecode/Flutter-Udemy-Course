import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final containers = List.generate(
      18,
      (index) => Container(
        color: Colors.primaries[index],
        width: 100,
        height: 100,
        alignment: Alignment.center,
        child: Text("$index"),
      ),
    );

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Container(
            height: 100,
            child: Row(children: [
              const FlutterLogo(
                size: 90,
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(8),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: containers,
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: SingleChildScrollView(
              
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    child: const TextField(),
                    padding: EdgeInsets.all(8.0),
                  ),
                  ...containers,
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
