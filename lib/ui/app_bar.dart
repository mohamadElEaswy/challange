import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon(
      {super.key, required this.icon, this.onPressed, this.tooltip});

  final IconData icon;
  final void Function()? onPressed;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return
        SizedBox(
          width: 45.0,
          height: 45.0,
          child: FloatingActionButton(
      backgroundColor: Colors.blueGrey.shade50,
      shape: const CircleBorder(),
      elevation: 0.0,
      onPressed: onPressed,
      tooltip: tooltip,
      child: Icon(
          icon,
          color: Colors.black54,
      ),
    ),
        );
  }
}
