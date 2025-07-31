import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/profile_screen.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Profile()),
          );
        },
        child: const CircleAvatar(
          child: Icon(Icons.person),
        ),
      ),
    );
  }
}
