import 'package:flutter/cupertino.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;

  const MyButton({super.key, required this.onTap, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        width: 200,
        height: 200,
        padding: const EdgeInsets.all(25),
        child: const Center(
          child: Text('Tap'),
        ),
      ),
    );
  }
}
