import 'package:flutter/material.dart';
import 'package:keys/widgets/counter_button.dart';

class MovableWidgetPage extends StatefulWidget {
  const MovableWidgetPage({super.key});

  @override
  State<MovableWidgetPage> createState() => _MovableWidgetPageState();
}

class _MovableWidgetPageState extends State<MovableWidgetPage> {

  bool _inBody = true;
  final counterKey = GlobalKey<CounterButtonState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const Drawer(

      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: !_inBody ? CounterButton(
          key: counterKey,
        ) : null,
        actions: [
          TextButton(
            onPressed: (){
              counterKey.currentState?.reset();
            },
            child: const Text('reset'),
          ),
          Switch(
            value: _inBody,
            onChanged: (value) {
              setState(() {
                _inBody = value;
              });
            },
          ),
        ],
      ),
      body: _inBody ? CounterButton(
        key: counterKey,
      ) : null,
    );
  }
}