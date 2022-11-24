import 'package:flutter/material.dart';
import 'package:dummy_flutter/screens/home/widgets/ui_search_bar.dart';

class HomeAppBar extends AppBar {
  final BuildContext context;
  final TextEditingController txtController;

  final VoidCallback onClearTap;

  HomeAppBar(
      {Key? key,
      required this.context,
      required this.txtController,
      required this.onClearTap})
      : super(
          key: key,
          toolbarHeight: 170,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleSpacing: 2,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: UISearchBar(
              textController: txtController,
            ),
          ),
        );
}
