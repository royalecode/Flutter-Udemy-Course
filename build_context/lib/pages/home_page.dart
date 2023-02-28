import 'package:build_context/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize = context.screenSize;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          '${screenSize.width} * ${screenSize.height}',
        ),
      ),
    );
  }
}