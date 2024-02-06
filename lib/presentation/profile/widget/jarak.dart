import 'package:bogopa_mobile/core/constants/colors.dart';
import 'package:flutter/material.dart';

class JaratWidget extends StatefulWidget {
  const JaratWidget({super.key});

  @override
  State<JaratWidget> createState() => _JaratWidgetState();
}

class _JaratWidgetState extends State<JaratWidget> {
  double _currentSliderValue = 75;
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        overlayShape: SliderComponentShape.noOverlay
      ), 
    child: Slider(
      
      activeColor: AppColors.pinkMerah,
      value: _currentSliderValue,
      max: 100,
      divisions: 100,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    ));
  }
}
