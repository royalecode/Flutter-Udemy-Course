import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/pages/login/login_controller.dart';
import 'package:provider_example/src/pages/login/widgets/data_view.dart';
import 'package:provider_example/src/pages/login/widgets/email_view.dart';
import 'package:provider_example/src/pages/login/widgets/password_view.dart';

import '../../../main.dart';
import 'widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginController>(
      create: (_) {
        final controller = LoginController();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          controller.afterFirstLayout();
        });
        return controller;
      },
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Builder(
              builder: (_) => Text(Provider.of<CounterController>(_).counter.toString()),
            ),
          ),
          body: SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  const LoginForm(),
                  Text("global user is not null ${context.watch<GlobalState>().user != null}"),
                  // DataView(),
                  // EmailView(),
                  // PasswordView(),
                  // Consumer<LoginController>(
                  //   builder: (_, controller, __) {
                  //     print("consumer");
                  //     return Container(
                  //       child: Column(
                  //         children: [
                  //           Text(controller.email),
                  //         ],
                  //       ),
                  //     );
                  //   },
                  // ),
                  // Selector<LoginController, String>(
                  //   builder: (_, email, __) {
                  //     print("selector");
                  //     return Text("Selector email:: $email");
                  //   },
                  //   selector: (_, controller) => controller.email,
                  // ),
                  // Selector<LoginController, String>(
                  //   builder: (_, password, __) {
                  //     print("selector2");
                  //     return Text("Selector password:: $password");
                  //   },
                  //   selector: (_, controller) => controller.password,
                  // ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {
            context.read<CounterController>().increment();
          },),
        );
      }),
    );
  }
}
