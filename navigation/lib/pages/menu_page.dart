import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:navigation/pages/color_picker.dart';

import '../routes.dart';
import 'login_page.dart';

class PageData{
  final String name;
  final String label;
  final Object? arguments;

  const PageData({
    this.arguments, 
    required this.name,
    required this.label,
  });
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Color _color = Colors.red;

  final _pages = const [
    PageData(
      name: Routes.login,
      label: 'go to login',
      arguments: 'test@test.com'
    ),
    PageData(
      name: Routes.counter,
      label: 'go to counter',
    ),
    PageData(
      name: Routes.colorPicker,
      label: 'pick color',
    ),
    PageData(
      name: Routes.dialogs,
      label: 'go to dialogs',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
      ),
        body: ListView.builder(
          itemBuilder: (_, index) {
            final data = _pages[index];
            return ListTile(
              title: Text(data.label),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  data.name,
                  arguments: data.arguments,
                );
              },
            );
          },
          itemCount: _pages.length,
        )
      );
  }
}
