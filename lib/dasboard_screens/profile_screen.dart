import 'package:flutter/material.dart';

import '../reusable_widgets/custom_scaffold2.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold2(
      child: Center(child: Text('User Profile',style: TextStyle(color: Colors.amber,fontSize: 60))),
    );
  }
}
