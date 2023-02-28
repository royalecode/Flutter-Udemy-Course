import 'package:flutter/material.dart';

class LoginCheckbox extends FormField<bool> {
  LoginCheckbox({
    Key? key,
    AutovalidateMode? autovalidateMode,
    String? Function(bool?)? validator,
    required void Function(bool value) onChanged,
  })
      : super(
            key: key,
            autovalidateMode: autovalidateMode,
            initialValue: false,
            validator: validator,
            builder: (state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CheckboxListTile(
                    title: const Text('hello world'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: state.value ?? false,
                    onChanged: (value) {
                      state.didChange(value);
                      if (value != null) {
                        onChanged(value);
                      }
                    },
                  ),
                  if (state.hasError)
                    Text(
                      state.errorText!,
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                    ),
                ],
              );
            });
}
