import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: ProjectPadding.pagePaddingVertical,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                padding: EdgeInsets.zero,
                color: Colors.amberAccent,
                height: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Container(color: Colors.brown, height: 40),
            ),
            const Padding(
                padding: ProjectPadding.pagePaddingRightOnly,
                child: Text("ali"))
          ]),
        ));
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 80);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 10);
}
