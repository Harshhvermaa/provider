import 'package:counter_provider/provider/counterScreenProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../provider/sliderProvider.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    // final homescreenProvider = Provider.of<HomescreenProvider>(context,listen: false);
    final sliderScreenProvider =
        Provider.of<SliderScreenProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Consumer<SliderScreenProvider>(
              builder: (context, provider, child) {
                return SfSlider(
                  min: 0.0,
                  max: 100.0,
                  value: provider.value,
                  interval: 20,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  minorTicksPerInterval: 1,
                  onChanged: (dynamic value) {
                    provider.updateSliderValue(value);
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
