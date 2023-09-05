import 'package:counter_provider/provider/cartScreenProvider.dart';
import 'package:counter_provider/provider/counterScreenProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../provider/sliderProvider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    // final homescreenProvider = Provider.of<HomescreenProvider>(context,listen: false);
    final cartScreenProvider =
        Provider.of<CartScreenProvider>(context, listen: false);
    return Scaffold(
      body: Consumer<CartScreenProvider>(
        builder: (context, provider, child) {
          return ListView.builder(
            itemCount: provider.fruitName.length,
            itemBuilder: (context, index) {
              return ListTile(
                tileColor: provider.selectedFruits
                        .contains(provider.fruitName[index])
                    ? Colors.red
                    : Colors.orange,
                onTap: () {
                  provider.addFruit(provider.fruitName[index]);
                },
                title: Text("${provider.fruitName[index]}"),
              );
            },
          );
        },
      ),
    );
  }
}
