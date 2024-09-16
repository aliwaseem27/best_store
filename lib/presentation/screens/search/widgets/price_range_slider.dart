import 'package:best_store/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PriceRangeSlider extends StatefulWidget {
  const PriceRangeSlider({
    super.key,
  });

  @override
  State<PriceRangeSlider> createState() => _PriceRangeSliderState();
}

class _PriceRangeSliderState extends State<PriceRangeSlider> {
  RangeValues _values = const RangeValues(1, 501);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '\$${_values.start}',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Expanded(
          child: SliderTheme(
            data: SliderThemeData(
              activeTrackColor: AppColors.primaryColor,
              inactiveTrackColor: AppColors.neutralColor,
              thumbColor: Colors.white,
              overlayColor: AppColors.primaryColor.withOpacity(0.5),
            ),
            child: RangeSlider(
              values: _values,
              // labels: labels,
              divisions: 500,
              min: 1,
              max: 501,
              onChanged: (newValues) {
                setState(() {
                  double start = newValues.start.roundToDouble();
                  double end = newValues.end.roundToDouble();
                  _values = RangeValues(start, end);
                });
              },
            ),
          ),
        ),
        Text(
          '\$${_values.end}',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
