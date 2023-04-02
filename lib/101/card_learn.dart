import "package:flutter/material.dart";

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargin.cardMargin,
            child: SizedBox(
                height: 20,
                width: 200,
                child: Center(child: (const Text("şevvals")))),
          ),
          Card(
            margin: ProjectMargin.cardMargin,
            child: SizedBox(
              height: 10,
              width: 200,
              child: Center(
                child: const Text("selam"),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(10);
}
