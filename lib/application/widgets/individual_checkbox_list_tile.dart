import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class IndividualCheckBoxListTile extends HookWidget {
  const IndividualCheckBoxListTile({
    Key? key,
    required this.title,
    this.isChecked,
    this.onChanged,
  }) : super(key: key);

  final bool? isChecked;
  final String title;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final isCheckboxFilled = useState(isChecked ?? false);
    return CheckboxListTile(
      value: isCheckboxFilled.value,
      onChanged: (checkBoxStatus) {
        final onChangeCallback = onChanged;
        if (onChangeCallback == null) {
          isCheckboxFilled.value = checkBoxStatus ?? isCheckboxFilled.value;
          return;
        }
        onChangeCallback(checkBoxStatus);
        isCheckboxFilled.value = checkBoxStatus ?? isCheckboxFilled.value;
      },
      title: Text(
        title,
        style: TextStyle(
          decoration:
              isCheckboxFilled.value ? TextDecoration.lineThrough : null,
        ),
      ),
    );
  }
}
