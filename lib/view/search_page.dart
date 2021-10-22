import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        child: SizedBox(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
