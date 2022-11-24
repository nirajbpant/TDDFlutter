import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dummy_flutter/application/search_trailer/search_trailer_bloc.dart';
import 'package:dummy_flutter/config/constants/assets_constants.dart';
import 'package:dummy_flutter/injectable/injection.dart';

class UISearchBar extends StatelessWidget {
  final TextEditingController textController;

  const UISearchBar({
    Key? key,
    required this.textController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchTrailerBloc>(),
      child: SizedBox(
        height: 90,
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextField(
          style: const TextStyle(
            color: Colors.white,
            fontFamily: fontNameMontserrat,
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
          controller: textController,
          decoration: const InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.all(11.0),
              child: Icon(Icons.search),
            ),
            contentPadding: EdgeInsets.only(
              top: 15,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide.none,
            ),
            fillColor: Color.fromRGBO(0, 0, 0, 0.40),
            hintText: 'Search - Trailer ID',
            filled: true,
            hintStyle: TextStyle(
              color: Colors.white,
              fontFamily: fontNameMontserrat,
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
          ),
          onSubmitted: (String searchedText) {
            final bloc = context.read<SearchTrailerBloc>();
            bloc.add(
                SearchTrailerEvent.getTrailerInfo(trailerId: searchedText));
          },
        ),
      ),
    );
  }
}
