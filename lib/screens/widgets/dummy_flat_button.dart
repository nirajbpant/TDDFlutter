import 'package:flutter/material.dart';

import '../../config/app_theme.dart';
import '../../config/constants/assets_constants.dart';

class DummyFlatButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String btnName;
  final Widget icon;
  const DummyFlatButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.btnName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppTheme.primaryAppColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
        icon: Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 0),
          child: Text(
            btnName,
            style: const TextStyle(
              fontFamily: fontNameMontserrat,
              fontSize: 16,
            ),
          ),
        ),
        label: icon,
      ),
    );
  }
}
