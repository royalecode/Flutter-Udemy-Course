

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/pages/login/login_page.dart';

import '../../../main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final GlobalState globalState = context.watch<GlobalState>();
    final user = globalState.user;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(user.email),
            Text(user.name),
            Text(user.birthday.toString()),
            MaterialButton(
              onPressed: () {
                globalState.user = null;
                final Route route = MaterialPageRoute(builder: (_) => LoginPage());
                Navigator.pushAndRemoveUntil(
                  context,
                  route,
                  (route) => false,
                );
              },
              child: const Text(
                "Sign Out",
              ),
            )
          ],
        ),
      ),
    );
  }
}