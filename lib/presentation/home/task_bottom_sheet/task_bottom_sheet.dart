import 'package:flutter/material.dart';
import 'package:to_do/core/utils/app_styles.dart';
import 'package:to_do/core/utils/date_utils.dart';

class TaskBottomSheet extends StatefulWidget {
  TaskBottomSheet({super.key});

  @override
  State<TaskBottomSheet> createState() => _TaskBottomSheetState();

  static Widget show() => TaskBottomSheet();
}

class _TaskBottomSheetState extends State<TaskBottomSheet> {
  DateTime selectesDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add new task',
            textAlign: TextAlign.center,
            style: AppLightStyles.bottomSheetTitle,
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Enter your task title',
                hintStyle: AppLightStyles.hintStyle),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Enter your task description',
                hintStyle: AppLightStyles.hintStyle),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Select date',
            style: AppLightStyles.dateLabel,
          ),
          const SizedBox(
            height: 8,
          ),
          InkWell(
              onTap: () {
                showTaskDatePicker();
              },
              child: Text(
                selectesDate.toFormattedDate,
                textAlign: TextAlign.center,
                style: AppLightStyles.dateStyle,
              )),
          const Spacer(),
          ElevatedButton(onPressed: () {}, child: const Text('Add task'))
        ],
      ),
    );
  }

  void showTaskDatePicker() async {
    selectesDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 365)),
        ) ??
        selectesDate;
    setState(() {});
  }
}
