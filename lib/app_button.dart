import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String operation;
  final String description;
  final Color? operationColor;
  final VoidCallback? onPressed;

  const AppButton({
    Key? key,
    required this.operation,
    required this.description,
    this.operationColor = Colors.black,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: MaterialButton(
        onPressed: () {
          onPressed?.call();
        },
        color: Colors.white,
        height: 60,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              operation,
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Menlo',
                fontWeight: FontWeight.w900,
                color: operationColor,
              ),
            ),
            Text(
              description,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
    );
  }
}
