import 'package:bogopa_mobile/core/constants/colors.dart';
import 'package:flutter/material.dart';

class UsiaWidget extends StatefulWidget {
  const UsiaWidget({super.key});

  @override
  State<UsiaWidget> createState() => _UsiaWidgetState();
}

class _UsiaWidgetState extends State<UsiaWidget> {
  RangeValues _currentRangeValues = const RangeValues(20, 30);
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
        data: SliderThemeData(overlayShape: SliderComponentShape.noOverlay),
        child: RangeSlider(
          values: _currentRangeValues,
          activeColor: AppColors.pinkMerah,
          max: 100,
          divisions: 100,
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        ));
  }
}

