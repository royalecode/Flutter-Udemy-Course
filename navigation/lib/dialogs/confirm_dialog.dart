import 'package:flutter/material.dart';

Future<bool> showConfirmDialog(
  BuildContext context, {
  String title = '',
}) async {
  final result = await showDialog<bool>(
    context: context,
    barrierColor: Colors.white.withOpacity(0.8),
    barrierDismissible: false,
    builder: (context) => _DialogContent(
      title: title,
    ),
  );
  return result ?? false;
}

class _DialogContent extends StatelessWidget {
  const _DialogContent({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        textAlign: TextAlign.center,
      ),
      actionsAlignment: MainAxisAlignment.center,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          child: const Text(
            'Yes',
            style: TextStyle(
              color: Colors.green,
            ),
          ),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'No',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
