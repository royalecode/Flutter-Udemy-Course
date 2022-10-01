import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key});

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const Text(
                  '''
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer 
took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, 
but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software 
like Aldus PageMaker including versions of Lorem Ipsum.
''',
                ),
                CheckboxListTile(
                  value: _checked,
                  contentPadding: EdgeInsets.zero,
                  title: const Text(
                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _checked = value;
                      });
                    }
                    print('$value');
                  },
                ),
                Checkbox(
                  value: _checked,
                  fillColor: MaterialStateProperty.all(
                    Colors.blue,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _checked = value;
                      });
                    }
                    print('$value');
                  },
                ),
                const Divider(),
                SwitchListTile(
                  value: _checked,
                  controlAffinity: ListTileControlAffinity.leading,
                  inactiveTrackColor: Colors.blueGrey.shade100,
                  title: const Text('push notifications',),
                  onChanged: (value) {
                    setState(() {
                      _checked = value;
                    });
                  },
                ),
                const Divider(),
                MaterialButton(
                  onPressed: _checked ? () {} : null,
                  child: const Text('Next'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
