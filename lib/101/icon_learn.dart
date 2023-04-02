import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final IconSizes iconSize = IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Hello")),
        body: Column(children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message_outlined,
                  color: Colors.red, size: 40)),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.message_outlined,
                color: Colors.amber,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColors.yagYesili,
                size: iconSize.iconSmall,
              ))
        ]));
  }
}

class IconSizes {
  final double iconSmall = 40;
}

class IconColors {
  final Color yagYesili = const Color.fromARGB(255, 110, 105, 136);
}
