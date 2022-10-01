import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 10;
  double _value2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Slider(
                value: _value2,
                label: _value2.toString(),
                divisions: 10,
                min: 0,
                max: 10,
                onChanged: (value) {
                  setState(() {
                    _value2 = value.floorToDouble();
                  });
                },
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 60,
                  ),
                  SizedBox(
                    height: 200,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Slider(
                        value: _value,
                        label: _value.toString(),
                        divisions: 90,
                        min: 10,
                        max: 100,
                        onChanged: (value) {
                          setState(() {
                            _value = value.floorToDouble();
                          });
                        },
                      ),
                    ),
                  ),
                  const Text('Slider test'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
