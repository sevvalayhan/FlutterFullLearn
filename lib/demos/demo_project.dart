import 'package:flutter/material.dart';
import 'package:flutter_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final String title = "create yout first note";
  final String _description = "bu elma ve kitaplar da kimin?";
  final String _createNote = "Import";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleImage),
            _TitleWidged(_title: title),
            Padding(
                padding: PaddingItems.verticalInput,
                child: _SubTitleWidget(
                    _title: _description, _textAlign: TextAlign.center)),
            _ButtonWidget(_buttonText: _createNote)
          ],
        ),
      ),
    );
  }
}

class _TitleWidged extends StatelessWidget {
  const _TitleWidged({Key? key, required this._title}) : super(key: key);
  final String _title;
  @override
  Widget build(BuildContext context) {
    return Text(_title,
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: Colors.greenAccent));
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {super.key, required this._textAlign, required this._title});
  final TextAlign _textAlign;
  final String _title;

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      textAlign: _textAlign,
      style:
          Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.green),
    );
  }
}

class _ButtonWidget extends StatelessWidget {
  const _ButtonWidget({super.key, required this._buttonText});
  final String _buttonText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
            height: ButtonHeigs.buttonNormalHeigh,
            child: Center(
                child: Text(
              _buttonText,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.green),
            ))));
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalInput = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeigs {
  static const double buttonNormalHeigh = 20;
}
