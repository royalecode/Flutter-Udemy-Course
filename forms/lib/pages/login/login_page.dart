import 'package:flutter/material.dart';
import 'package:forms/pages/login/login_mixin.dart';
import 'package:forms/pages/login/widgets/login_checkbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with LoginMixin {
  String _email = '', _password = '';
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    bool allowSubmit = emailValidator(_email) == null;
    if (allowSubmit) {
      allowSubmit = passwordValidator(_password) == null;
    }

    if (allowSubmit) {
      allowSubmit = _checked;
    }

    return Form(
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(15),
            children: [
              TextFormField(
                // initialValue: 'test@test.com',
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value) {
                  setState(() {
                    _email = value.trim();
                  });
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  label: Text('email'),
                ),
                validator: emailValidator,
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value) {
                  setState(() {
                    _password = value.replaceAll(' ', '');
                  });
                },
                obscureText: true,
                decoration: const InputDecoration(
                  label: Text('password'),
                ),
                validator: passwordValidator,
              ),
              const SizedBox(
                height: 30,
              ),
              LoginCheckbox(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: checkboxValidator,
                onChanged: (value){
                  setState(() {
                    _checked = value;
                  });
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Builder(builder: (context) {
                return MaterialButton(
                  color: Colors.blue.withOpacity(
                    allowSubmit ? 1 : 0.2,
                  ),
                  elevation: 0,
                  onPressed: () => _submit(context),
                  child: const Text('Sign In'),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  void _submit(BuildContext context) {
    final formState = Form.of(context);
    if (formState?.validate() ?? false) {
      print('emoji');
    }
  }
}
