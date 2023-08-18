import 'package:flutter/material.dart';

class UserButton extends StatelessWidget {
  const UserButton({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*.7,
      height: MediaQuery.of(context).size.height*.067,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(title),
      ),
    );
  }
}
