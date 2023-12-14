import 'package:flutter/material.dart';

class ScrollableListFromCenter extends StatelessWidget {
  final List<Widget> children;
  const ScrollableListFromCenter({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children),
      ),
    );
  }
}
