import 'package:flutter/material.dart';

class StatelessLearnView extends StatelessWidget {
  const StatelessLearnView({super.key});

  final String text1 = "şevval";
  final String text2 = "zülal";
  final String text3 = "alihan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TitleTextWidget(text: text1),
        _emptyBox(),
        TitleTextWidget(text: text2),
        _emptyBox(),
        TitleTextWidget(text: text3)
      ]),
    );
  }
}

SizedBox _emptyBox() => const SizedBox(
      height: 20,
      width: 20,
    );

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: Theme.of(context).textTheme.displaySmall,
    );
  }
}
