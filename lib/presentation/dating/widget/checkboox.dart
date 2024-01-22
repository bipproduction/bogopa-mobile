import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for custom labeled checkbox.

class CheckboxWidget extends StatelessWidget {
  const CheckboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const LabeledCheckboxExample(),
    );
  }
}

class LinkedLabelCheckbox extends StatelessWidget {
  const LinkedLabelCheckbox({
    super.key,
    required this.padding,
    required this.value,
    required this.onChanged,
  });

  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: <Widget>[
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()..onTap = () {},
              ),
            ),
          ),
          Checkbox(
            value: value,
            onChanged: (bool? newValue) {
              onChanged(newValue!);
            },
          ),
        ],
      ),
    );
  }
}

class LabeledCheckboxExample extends StatefulWidget {
  const LabeledCheckboxExample({super.key});

  @override
  State<LabeledCheckboxExample> createState() => _LabeledCheckboxExampleState();
}

class _LabeledCheckboxExampleState extends State<LabeledCheckboxExample> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: LinkedLabelCheckbox(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        value: _isSelected,
        onChanged: (bool newValue) {
          setState(() {
            _isSelected = newValue;
          });
        },
      ),
    );
  }
}