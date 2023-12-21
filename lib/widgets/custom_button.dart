import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final Widget child;
  const CustomButton({
    required this.onPressed,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(child: child, onPressed: onPressed);
    // return FilledButton(
    //   onPressed: onPressed,
    //   style: ButtonStyle(
    //     padding: MaterialStateProperty.all(
    //       const EdgeInsets.all(16),
    //     ),
    //     shape: MaterialStateProperty.all(
    //       RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(10),
    //       ),
    //     ),
    //   ),
    //   child: child,
    // );
  }
}
