import 'package:flutter/material.dart';

class ResponsiveLayOut extends StatelessWidget {
  const ResponsiveLayOut({
    super.key,
    required this.desktop,
    required this.mobile,
    required this.table,
  });

  final Widget mobile;
  final Widget table;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobile;
        } else if (constraints.maxWidth < 1100) {
          return table;
        } else {
          return desktop;
        }
      },
    );
  }
}
