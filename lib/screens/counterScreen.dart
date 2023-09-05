import 'package:counter_provider/provider/counterScreenProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    final homescreenProvider = Provider.of<CounterscreenProvider>(context,listen: false);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Consumer<CounterscreenProvider>(builder: (context, value, child) {
              return Text("${value.count}");
            },),
            ElevatedButton(onPressed: () {
              homescreenProvider.increment();
            }, child: Text("Increase"))
          ],
        ),
      ),
    );
  }
}
