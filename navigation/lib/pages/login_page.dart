import 'package:flutter/material.dart';
import 'package:navigation/pages/profile_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading: IconButton(
          //     onPressed: () {
          //       Navigator.maybePop(context);
          //     },
          //     icon: const Icon(
          //       Icons.arrow_back,
          //     )),
          ),
      body: Center(
          child: SafeArea(
              child: Column(
        children: [
          MaterialButton(
            onPressed: () {
              final route = MaterialPageRoute(
                builder: (_) => const ProfilePage(),
              );
              Navigator.push(context, route);
            },
            child: Text("LOGIN PAGE $email"),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (_, index) => Container(
                height: 70,
                color: Colors.primaries[index],
              ),
              itemCount: Colors.primaries.length,
            ),
          )
        ],
      ))),
    );
  }
}
