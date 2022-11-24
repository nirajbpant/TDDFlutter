import 'package:flutter/material.dart';
import 'package:dummy_flutter/config/app_theme.dart';
import 'package:dummy_flutter/config/constants/assets_constants.dart';

class TrailerNotFound extends StatelessWidget {
  final String errorMsg;
  const TrailerNotFound({
    Key? key,
    required this.errorMsg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200,
        width: 200,
        child: Column(
          children: [
            const Text(
              "Uh! Oh!",
              style: AppTheme.screenHeadingErrorStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            const Icon(
              Icons.gps_not_fixed_outlined,
              color: Colors.red,
              size: 70,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              errorMsg,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: fontNameMontserrat,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
