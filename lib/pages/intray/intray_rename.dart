import 'package:flutter/material.dart';
import '../../models/global.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPage createState() => _IntrayPage();
}

class _IntrayPage extends State<IntrayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 250),
        color: darkGreyColor,
        child: ListView(children: getList()));
  }

  List<Widget> getList() {
    return [
      Container(height: 100, color: Colors.green),
      Container(height: 100, color: Colors.yellow),
      Container(height: 100, color: Colors.red),
      Container(height: 100, color: Colors.green),
      Container(height: 100, color: Colors.yellow),
      Container(height: 100, color: Colors.red),
    ];
  }
}
