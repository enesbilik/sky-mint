import 'package:flutter/material.dart';
import 'package:sky_mint/view/profile_page.dart';
import 'view/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SkyMint',
      home: ProfilePage(),
    );
  }
}
