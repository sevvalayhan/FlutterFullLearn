import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextButton(
              child: const Text("save"),
              onPressed: () {},
            ),
            ElevatedButton(onPressed: () {}, child: const Text("data")),
            IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
            FloatingActionButton(
                onPressed: () {}, child: const Icon(Icons.add)),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.all(10)),
                onPressed: () {},
                child: const Text("data")),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.abc),
                label: const Text("data")),
            InkWell(onTap: () {}, child: const Text("custom")),
            Container(height: 100, color: Colors.white),
            const SizedBox(height: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 1, left: 1),
                  child: Text("place bid",
                      style: Theme.of(context).textTheme.headlineSmall),
                ))
          ],
        ));
  }
}
