import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Container(
        width: 177,
        height: 177,
        color: Colors.red,
      ),
    );
  }
}
