import 'package:flutter/material.dart';

import '../../config/app_theme.dart';
import '../../config/constants/assets_constants.dart';

class dummyActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String btnName;
  final bool isExtendedButton;
  const dummyActionButton({
    Key? key,
    required this.onPressed,
    required this.btnName,
    required this.isExtendedButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(45.0),
      child: SizedBox(
        height: 60,
        width: !isExtendedButton ? 170 : 250,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(AppTheme.primaryAppColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          child: Text(
            btnName,
            style: const TextStyle(
              fontFamily: fontNameMontserrat,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
