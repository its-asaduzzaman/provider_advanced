import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NotifyListenerScreen extends StatelessWidget {
  NotifyListenerScreen({Key? key}) : super(key: key);

  final ValueNotifier<int> _counter = ValueNotifier<int>(0);
  final ValueNotifier<bool> _toggle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ValueListenableBuilder(
                valueListenable: _toggle,
                builder: (context, value, child) {
                  return TextField(
                    obscureText: _toggle.value,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: InkWell(
                        onTap: () {
                          _toggle.value = !_toggle.value;
                        },
                        child: Icon(
                          _toggle.value
                              ? Icons.visibility_off
                              : Icons.remove_red_eye,
                        ),
                      ),
                    ),
                  );
                }),
            Center(
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
