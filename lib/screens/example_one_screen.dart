import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_advanced/provider/example_one_provider.dart';

class ExampleOneScreen extends StatelessWidget {
  const ExampleOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Build");

    return Scaffold(
      body: Consumer<ExampleOneProvider>(
        builder: (context, value, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                  value: value.value,
                  onChanged: (val) {
                    value.setValue(val);
                  }),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.value),
                      ),
                      child: const Center(child: Text("Container 01")),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(value.value),
                      ),
                      child: const Center(child: Text("Container 02")),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
