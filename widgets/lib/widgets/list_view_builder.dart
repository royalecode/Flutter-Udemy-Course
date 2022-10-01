import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    const names = ["Edmon", "lullu", "Darwin"];

    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemBuilder: (_, int index) {
          final name = names[index];
          print("hd");
          return Container(
            height: 100,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(5),
            child: Text(name),
          );
        },
        itemCount: names.length, 
        separatorBuilder: (_, int index) { 
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 2,
                  color: Colors.black38,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  names[index].length.toString(),
                ),
              ),
              Expanded(
                child: Container(
                  height: 2,
                  color: Colors.black38,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
