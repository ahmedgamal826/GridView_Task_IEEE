import 'package:flutter/material.dart';

import 'fruits_screen.dart';

void main() {
  runApp(const GridViewTask());
}

class GridViewTask extends StatelessWidget {
  const GridViewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FruitsScreen(),
    );
  }
}
