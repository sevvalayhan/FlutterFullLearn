import 'package:flutter/material.dart';

class InducatorView extends StatelessWidget {
  const InducatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [CenterCircularRedProgress()],
        ),
        body: Center(
          child: const LinearProgressIndicator(
            color: Colors.indigo,
          ),
        ));
  }
}

class CenterCircularRedProgress extends StatelessWidget {
  const CenterCircularRedProgress({super.key});
  final Color redColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 10,
          value: 0.9,
          backgroundColor: redColor),
    );
  }
}
