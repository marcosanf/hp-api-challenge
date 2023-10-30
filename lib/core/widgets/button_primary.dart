import 'package:flutter/material.dart';
import 'package:hp_api_challenge/core/app/colors.dart';
import 'package:hp_api_challenge/core/app/spaces.dart';

class ButtonPrimary extends StatelessWidget {
  final String? text;
  final Function()? onPressed;
  const ButtonPrimary({
    super.key,
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    const buttonHeight = 54.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: HSpaces.sm),
      child: SizedBox(
        height: buttonHeight,
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
          ),
          onPressed: onPressed,
          child: Text(
            text ?? "",
            style: const TextStyle(
              color: HColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
