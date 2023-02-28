import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/pages/home/home_page.dart';

import '../../../../main.dart';
import '../../../models/user.dart';
import '../login_controller.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  void _submit(BuildContext context) {
    final controller = context.read<LoginController>();

    final bool _isOk = controller.formKey.currentState.validate();
    if (_isOk) {
      final User user = controller.submit();
      if(user==null){
        showDialog(
          context: context,
          builder: (_) => const AlertDialog(
            title: Text("ERROR"),
            content: Text("invalid email or password"),
          ),
        );
        return;
      }

      final Route route = MaterialPageRoute(builder: (_) => const HomePage());

      context.read<GlobalState>().user = user;

      Navigator.pushReplacement(context, route);
    }
  }

  @override
  Widget build(BuildContext context) {
    print("emoji");
    final LoginController controller = Provider.of<LoginController>(
      context,
      listen: false,
    );
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'email',
            ),
            validator: (text) {
              if (text.contains("@")) return null;
              return "Invalid email";
            },
            onChanged: controller.onEmailChanged,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'password',
            ),
            validator: (text) {
              if (text.trim().length > 5) return null;
              return "Invalid password";
            },
            onChanged: controller.onPasswordChanged,
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () => _submit(context),
            child: const Text(
              'SEND',
            ),
          ),
        ],
      ),
    );
  }
}
