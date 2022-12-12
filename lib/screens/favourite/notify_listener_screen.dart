import 'package:flutter/material.dart';

class NotifyListenerScreen extends StatelessWidget {
  NotifyListenerScreen({Key? key}) : super(key: key);

  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
          child: ValueListenableBuilder(
              valueListenable: _counter,
              builder: (context, value, child) {
                return Text(
                  _counter.value.toString(),
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                );
              })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
