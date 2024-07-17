import 'package:flutter/material.dart';

class TermsAndConditionsCheckbox extends StatefulWidget {
  final ValueChanged<bool>? onChanged;

  const TermsAndConditionsCheckbox({Key? key, this.onChanged})
      : super(key: key);

  @override
  _TermsAndConditionsCheckboxState createState() =>
      _TermsAndConditionsCheckboxState();
}

class _TermsAndConditionsCheckboxState
    extends State<TermsAndConditionsCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: _isChecked,
      onChanged: (value) {
        setState(() {
          _isChecked = value!;
          if (widget.onChanged != null) {
            widget.onChanged!(_isChecked);
          }
        });
      },
      title: Text('I agree to the terms and conditions'),
    );
  }
}
