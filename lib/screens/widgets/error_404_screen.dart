import 'package:flutter/material.dart';

class Error404Screen extends StatelessWidget {
  final String errorText;
  const Error404Screen({Key? key, required this.errorText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Expanded(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Text(
                errorText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
