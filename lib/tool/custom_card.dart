import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.child,
    required this.color,
  });

  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: color,
      margin: const EdgeInsets.all(10),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: child,
      ),
    );
  }
}
