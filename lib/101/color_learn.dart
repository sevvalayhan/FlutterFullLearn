import 'package:flutter/material.dart';

class ColorsLearnView extends StatelessWidget {
  const ColorsLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Text("data",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.error)),
        Container(
          color: ColorsItems.green,
          child: const Text("data"),
        ),
      ]),
    );
  }
}

class ColorsItems {
  static const Color porchase = Color(0xffE49393);
  static const Color green = Color.fromARGB(255, 25, 160, 81);
}
