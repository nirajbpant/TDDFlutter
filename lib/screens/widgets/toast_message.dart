import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import '../../config/navigation/global_navigation_key.dart';

void showToastMessages({@required String? message, required Color color}) {
  if (message != null && message.isNotEmpty) {
    final GlobalNavigationKey globalNavigationKey = GlobalNavigationKey();
    showToast(
      message,
      context: globalNavigationKey.overlayContext,
      textStyle: Theme.of(globalNavigationKey.context!)
          .textTheme
          .subtitle2!
          .copyWith(color: Colors.white),
      backgroundColor: color,
      animation: StyledToastAnimation.fade,
      borderRadius: BorderRadius.circular(10.0),
      reverseAnimation: StyledToastAnimation.fade,
    );
  }
}
