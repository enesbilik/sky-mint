import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';

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
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 2, color: darkColor),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 3, left: 15, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Kişi veya Kulüp Aratınız",
                    icon: Icon(Icons.search)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
