import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/device_auth/device_auth_bloc.dart';
import '../../data/search_trailer/datastore/models/lat_lng_coordinates.dart';
import '../../injectable/injection.dart';
import '../../screens/login/widgets/auth_panel.dart';
import '../constants/nav_constants.dart';
import 'models/trailer_map_screen_arguments.dart';

void jumpToSplashScreen(BuildContext context) {
  Navigator.of(context).pushNamedAndRemoveUntil(valSplashScreen, (_) => false);
}

void jumpToHomeScreen(BuildContext context) {
  Navigator.of(context)
      .pushNamedAndRemoveUntil(valHomeScreen, (route) => false);
}

void jumpToLoginScreen(BuildContext context) {
  Navigator.of(context)
      .pushNamedAndRemoveUntil(valLoginScreen, (route) => false);
}

void jumpToTrailerMapScreen({
  required BuildContext context,
  required String trailerId,
  required double latitude,
  required double longitude,
  required List<LatLngCoordiantes> latLngResponseData,
}) {
  Navigator.of(context).pushNamed(valTrailerMapScreen,
      arguments: TrailerCoordinates(
          trailerId: trailerId,
          latitude: latitude,
          longitude: longitude,
          latLngResponseData: latLngResponseData));
}

void showDeviceActivationPopup({required BuildContext context}) {
  showModalBottomSheet<dynamic>(
    isDismissible: false,
    enableDrag: false,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
    ),
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: SizedBox(
          height: 340,
          child: BlocProvider(
            create: (context) => getIt<DeviceAuthBloc>(),
            child: const AuthPanel(),
          ),
        ),
      );
    },
  );
}
