import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: Colors.white, size: 32),
      trailing: const Icon(Icons.keyboard_arrow_right_outlined, color: Colors.white, size: 46,),
      title: Text(title, style: const TextStyle(
        fontSize: 17,
        color: Colors.white,
        fontWeight: FontWeight.w600
      )),
    );
  }
}