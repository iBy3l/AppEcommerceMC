import 'package:flutter/material.dart';

class SelectionTitle extends StatelessWidget {
  const SelectionTitle({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(title, style: Theme.of(context).textTheme.displaySmall),
      ),
    );
  }
}
