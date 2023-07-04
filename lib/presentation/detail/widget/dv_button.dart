// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DvButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onTap;
  final Color iconColor;
  const DvButton({
    Key? key,
    required this.icon,
    this.onTap,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
