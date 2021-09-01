import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String header;

  const Header({Key? key, required this.header}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          header,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
