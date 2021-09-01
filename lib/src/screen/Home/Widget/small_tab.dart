import 'package:flutter/material.dart';

class SmallTab extends StatelessWidget {
  final String tabName;
  const SmallTab({Key? key, required this.tabName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 6;
    final width = MediaQuery.of(context).size.width / 4;
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset.zero)
      ], borderRadius: BorderRadius.circular(8), color: Colors.grey[100]),
      height: height * 0.2,
      width: width * 0.8,
      child: Center(
        child: Text(
          tabName,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
