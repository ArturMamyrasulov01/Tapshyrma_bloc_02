import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  const ElevatedButtonWidget({
    Key? key,
    required this.size,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.05,
      width: size.width * 0.2,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Icon(
          icon,
          size: 35,
        ),
      ),
    );
  }
}
