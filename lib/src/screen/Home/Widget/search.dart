import 'package:flutter/material.dart';

class SearchTile extends StatelessWidget {
  const SearchTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Search Any Article...',
            hintStyle: Theme.of(context).textTheme.bodyText1,
            prefixIcon: Icon(Icons.search),
            isDense: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
    );
  }
}
