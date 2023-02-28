import 'package:build_context/utils/string_utils.dart';
import 'package:flutter/material.dart';

import '../utils/screen_utils.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenSize.height * 0.5,
            color: Colors.grey,
            child: Center(
              child: Text(
                "test@".isEmail.toString(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
