import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {

  String? _better;
  String? _gender;

  void _onBetterChanged(String? value) {
    setState(() {
      _better = value;
    });
  }  
  
  void _onGenderChanged(String? value) {
    setState(() {
      _gender = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            const Text(
              'Which is better?',
            ),
            RadioListTile<String>(
              value: 'java',
              contentPadding: EdgeInsets.zero,
              title: const Text('java'),
              groupValue: _better,
              onChanged: _onBetterChanged,
            ),
            RadioListTile<String>(
              value: 'javascript',
              contentPadding: EdgeInsets.zero,
              title: const Text('javascript'),
              groupValue: _better,
              onChanged: _onBetterChanged,
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'flutter',
                  groupValue: _better,
                  onChanged: (value){
                    setState(() {
                      _better = value;
                    });
                  },
                ),
                const Text('flutter'),
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'react native',
                  groupValue: _better,
                  onChanged: (value){
                    setState(() {
                      _better = value;
                    });
                  },
                ),
                const Text('react native'),
              ],
            ),
            const Divider(),
            const Text(
              'Which is your gender?',
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'male',
                  groupValue: _gender,
                  onChanged: _onGenderChanged
                ),
                const Text('male'),
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'femal',
                  groupValue: _gender,
                  onChanged: _onGenderChanged,
                ),
                const Text('female'),
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'other',
                  groupValue: _gender,
                  onChanged: _onGenderChanged,
                ),
                const Text('other'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
