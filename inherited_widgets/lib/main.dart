import 'package:flutter/material.dart';
import 'package:inherited_widgets/global/theme_controller.dart';
import 'package:inherited_widgets/state_management/consumer.dart';
import 'package:inherited_widgets/state_management/provider.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<ThemeControler>(
      create: () => ThemeControler(),
      child: Consumer<ThemeControler>(builder: (_, controller) {
        return MaterialApp(
          title: 'Flutter Demo',
          home: const MyHomePage(),
          theme: controller.isDarkModeEnabled
              ? ThemeData.dark()
              : ThemeData.light(),
        );
      }),
    );
  }
}
