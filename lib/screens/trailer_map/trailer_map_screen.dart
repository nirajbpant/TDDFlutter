import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../application/track_trailer/track_trailer_bloc.dart';
import '../../config/app_theme.dart';
import '../../config/constants/assets_constants.dart';
import '../../config/navigation/models/trailer_map_screen_arguments.dart';
import '../../injectable/injection.dart';

class TrailerMapScreen extends StatefulWidget {
  final TrailerCoordinates coordinates;
  const TrailerMapScreen({Key? key, required this.coordinates})
      : super(key: key);

  @override
  State<TrailerMapScreen> createState() => _TrailerMapScreenState();
}

class _TrailerMapScreenState extends State<TrailerMapScreen>
    with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late TrackTrailerBloc trackTrailerBloc;
  late GoogleMapController _mapController;

  @override
  void initState() {
    super.initState();
    trackTrailerBloc = getIt<TrackTrailerBloc>();
    trackTrailerBloc.add(TrackTrailerEvent.onInitialTrackingCordinates(
        coordinates: widget.coordinates));
  }

  @override
  void dispose() {
    super.dispose();
    _mapController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => trackTrailerBloc,
      child: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: AppTheme.primaryAppColor.withAlpha(200),
            title: Text(widget.coordinates.trailerId),
            centerTitle: true,
          ),
          body: BlocBuilder<TrackTrailerBloc, TrackTrailerState>(
            builder: (context, state) {
              return state.maybeWhen(
                  loading: () => const Center(
                        child: SizedBox(
                            height: 50,
                            width: 50,
                            child: CircularProgressIndicator()),
                      ),
                  failure: (errorMsg) => _showErrorScreen(errorMsg),
                  orElse: () => const SizedBox(),
                  tracked: (cameraPosition, marker, latLngResponseData) {
                    return Stack(
                      children: [
                        GoogleMap(
                          mapType: MapType.satellite,
                          initialCameraPosition: cameraPosition,
                          rotateGesturesEnabled: false,
                          tiltGesturesEnabled: false,
                          mapToolbarEnabled: false,
                          myLocationEnabled: false,
                          myLocationButtonEnabled: false,
                          zoomControlsEnabled: true,
                          onMapCreated: (GoogleMapController controller) {
                            _mapController = controller;
                          },
                          markers: {marker},
                        ),
                      ],
                    );
                  });
            },
          ),
          floatingActionButton: FloatingActionButton(
              heroTag: "resetCameraBtn",
              backgroundColor: AppTheme.primaryAppColor,
              foregroundColor: Colors.white,
              child: const Icon(Icons.center_focus_strong),
              onPressed: () {
                _mapController.animateCamera(
                  CameraUpdate.newCameraPosition(
                    CameraPosition(
                      target: LatLng(widget.coordinates.latitude,
                          widget.coordinates.longitude),
                      zoom: 17.5,
                    ),
                  ),
                );
              }),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.startFloat),
    );
  }

  Widget _showErrorScreen(String errorMsg) {
    return Center(
      child: SizedBox(
          height: 400,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                errorMsg,
                style: const TextStyle(
                    fontFamily: fontNameMontserrat,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.red),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          )),
    );
  }
}
