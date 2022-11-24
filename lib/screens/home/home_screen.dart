import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/search_trailer/search_trailer_bloc.dart';
import '../../injectable/injection.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/initial_search_indicator.dart';
import 'widgets/trailer_list.dart';
import 'widgets/trailer_not_found.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();
  late AnimationController lottieController;
  bool isAnimationComplete = false;

  @override
  void initState() {
    super.initState();
    lottieController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    lottieController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isAnimationComplete = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchTrailerBloc>(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: HomeAppBar(
          context: context,
          onClearTap: () {},
          txtController: _searchController,
        ),
        body: Stack(
          children: [
            BlocBuilder<SearchTrailerBloc, SearchTrailerState>(
              builder: (context, state) {
                return Container(
                  color: const Color(0xffe0f4ff),
                  child: state.when(
                    initial: () => !isAnimationComplete
                        ? InitialSearchIndicator(
                            lottieController: lottieController)
                        : Center(
                            child: SizedBox(
                              height: 200,
                              child: Icon(
                                Icons.location_on,
                                size: 200,
                                color: Colors.green.withOpacity(0.4),
                              ),
                            ),
                          ),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    success: (trailerDetails) =>
                        TrailerList(trailerDetails: trailerDetails),
                    failure: (errorMsg) => TrailerNotFound(
                      errorMsg: errorMsg,
                    ),
                  ),
                );
              },
            ),
            const _HomeTopGradient(),
          ],
        ),
      ),
    );
  }
}

class _HomeTopGradient extends StatelessWidget {
  const _HomeTopGradient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.black,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0, 0.9),
            colors: [
              Color(0xD9000000),
              Color(0x00000000),
            ],
            // tileMode: TileMode.claafasfmp,
          ),
        ),
      ),
    );
  }
}
