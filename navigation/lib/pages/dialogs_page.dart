import 'package:flutter/material.dart';
import 'package:navigation/dialogs/bottom_sheet_dialog.dart';
import 'package:navigation/dialogs/confirm_dialog.dart';
import 'package:navigation/dialogs/cupertino_dialog.dart';
import 'package:navigation/dialogs/custom_dialog.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            title: const Text("show info dialog"),
            onTap: (() async {
              await showDialog(
                context: context,
                builder: (context) => const DialogContent(),
              );
              print("emoji");
            }),
          ),
          ListTile(
            title: const Text("show confirm dialog"),
            onTap: (() async {
              final isOk = await showConfirmDialog(
                context,
                title: 'Are you sure',
              );
              print("is ok $isOk");
            }),
          ),
          ListTile(
            title: const Text("show cupertino dialog"),
            onTap: (() async {
              final value = await showDialogWithCupertinoStyle(
                context,
                title: 'Hi',
                content: 'How are you?',
              );
              print(value);
            }),
          ),
          ListTile(
            title: const Text("show bottom sheet dialog"),
            onTap: (() async {
              showBottomSheetDialog(context);
            }),
          ),
          ListTile(
            title: const Text("show custom dialog"),
            onTap: (() {
              showCustomDialog(context);
            }),
          )
        ],
      ),
    );
  }
}

class DialogContent extends StatelessWidget {
  const DialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text("My dialog"),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("OK"),
        )
      ],
    );
  }
}
