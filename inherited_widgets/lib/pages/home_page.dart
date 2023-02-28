import 'package:flutter/material.dart';
import 'package:inherited_widgets/global/theme_controller.dart';
import 'package:inherited_widgets/state_management/consumer.dart';
import 'package:inherited_widgets/state_management/notifier.dart';
import 'package:inherited_widgets/state_management/provider.dart';
import 'package:inherited_widgets/widgets/counter_text.dart';
import 'dart:math' as math;

class MyHomePageController extends ProviderNotifier {
  int _counter = 0;
  Color _color = Colors.blue;
  double _fontSize = 30.0;

  double get fontSize => _fontSize;
  int get counter => _counter;
  Color get color => _color;

  void incrementCounter() {
    _counter++;
    final index = math.Random().nextInt(Colors.primaries.length - 1);
    _color = Colors.primaries[index];
    notify();
  }

  void increaseFontSize() {
    _fontSize++;
    notify();
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<MyHomePageController>(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Consumer<ThemeControler>(
              builder: (_, controller) {
                return Switch(
                  value: controller.isDarkModeEnabled,
                  activeColor: Colors.redAccent,
                  onChanged: (_) {
                    controller.toggleTheme();
                  },
                );
              },
            ),
            Builder(builder: (context) {
              return IconButton(
                onPressed: () {
                  Provider.of<MyHomePageController>(context).incrementCounter();
                },
                icon: const Icon(Icons.font_download),
              );
            }),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CounterText(),
              Consumer<MyHomePageController>(
                  builder: (_, controller) => Text(
                        controller.fontSize.toString(),
                        style: TextStyle(
                          fontSize: controller.fontSize,
                        ),
                      )),
            ],
          ),
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            onPressed: () {
              Provider.of<MyHomePageController>(context).incrementCounter();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          );
        }), // This trailing comma makes auto-formatting nicer for build methods.
      ),
      create: () => MyHomePageController(),
    );
  }
}
