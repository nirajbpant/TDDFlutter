import 'package:flutter/material.dart';

import '../../../config/app_theme.dart';
import '../../../config/constants/assets_constants.dart';
import '../../../config/navigation/app_navigation.dart';
import '../../../data/search_trailer/datastore/models/trailer_details.dart';
import '../home_screen_constants.dart';

class TrailerList extends StatelessWidget {
  final TrailerDetails trailerDetails;
  const TrailerList({
    Key? key,
    required this.trailerDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.21,
        ),
        SizedBox(
          height: 600,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 1,
            itemBuilder: ((context, index) {
              return _TrailerItem(
                trailerDetails: trailerDetails,
              );
            }),
          ),
        ),
      ],
    );
  }
}

class _TrailerItem extends StatelessWidget {
  final TrailerDetails trailerDetails;
  const _TrailerItem({Key? key, required this.trailerDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      height: 400,
      child: Column(children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          trailerDetails.trailerId,
          style: const TextStyle(
              fontFamily: fontNameMontserrat,
              fontWeight: FontWeight.w600,
              fontSize: 17),
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: Colors.black87,
          endIndent: 10,
          indent: 10,
        ),
        const SizedBox(
          height: 40,
        ),
        _TrailerStatTile(
          trailerStatTitle: "Latitude\t\t\t\t\t\t",
          trailerStatData: trailerDetails.latitude ?? "N/A",
        ),
        const SizedBox(
          height: 4,
        ),
        _TrailerStatTile(
          trailerStatTitle: "Lontitude\t\t\t\t",
          trailerStatData: trailerDetails.longitude ?? "N/A",
        ),
        const SizedBox(
          height: 18,
        ),
        const Divider(
          color: Colors.black87,
          indent: 50,
          endIndent: 50,
        ),
        const SizedBox(
          height: 18,
        ),
        const _TrailerStatTile(
          trailerStatTitle: "Trailer Status\t\t",
          trailerStatData: "Loaded",
        ),
        const SizedBox(
          height: 4,
        ),
        const _TrailerStatTile(
          trailerStatTitle: "Trailer Type\t",
          trailerStatData: "Container",
        ),
        const SizedBox(
          height: 52,
        ),
        IconButton(
          icon: const Icon(
            Icons.navigation,
            color: AppTheme.primaryAppColor,
          ),
          iconSize: 70,
          onPressed: () {
            _navigateToMapsScreen(context);
          },
        ),
      ]),
    );
  }

  void _navigateToMapsScreen(BuildContext context) {
    if (trailerDetails.latitude != null &&
        trailerDetails.longitude != null &&
        trailerDetails.latitude != "" &&
        trailerDetails.longitude != "" &&
        trailerDetails.latLngResponseData != null) {
      return jumpToTrailerMapScreen(
        context: context,
        trailerId: trailerDetails.trailerId,
        latitude: double.parse(trailerDetails.latitude!),
        longitude: double.parse(trailerDetails.longitude!),
        latLngResponseData: trailerDetails.latLngResponseData!,
      );
    }
  }
}

class _TrailerStatTile extends StatelessWidget {
  final String trailerStatTitle;
  final String trailerStatData;

  const _TrailerStatTile({
    Key? key,
    required this.trailerStatTitle,
    required this.trailerStatData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          trailerStatTitle,
          style: identifierStyle,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          trailerStatData,
          style: identifierStyle,
        ),
      ],
    );
  }
}
