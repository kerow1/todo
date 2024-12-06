import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:to_do/presentation/home/tabs/tasks_tab/widgets/task_item.dart';

import '../../../../core/utils/colors_manager.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildCalenderTimeLine(),
        TaskItem(),
      ],
    );
  }

  Widget buildCalenderTimeLine() => EasyDateTimeLine(
        initialDate: DateTime.now(),
        onDateChange: (selectedDate) {
          //`selectedDate` the new date selected.
        },
        headerProps: const EasyHeaderProps(
            monthPickerType: MonthPickerType.switcher,
            dateFormatter: DateFormatter.fullDateDMY(),
            showHeader: false),
        dayProps: const EasyDayProps(
          height: 79,
          width: 58,
          dayStructure: DayStructure.dayStrDayNum,
          todayStyle: DayStyle(
            dayNumStyle: TextStyle(
                color: ColorsManager.black,
                fontSize: 15,
                fontWeight: FontWeight.w700),
            dayStrStyle: TextStyle(
                color: ColorsManager.black,
                fontSize: 15,
                fontWeight: FontWeight.w700),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.white,
            ),
          ),
          inactiveDayStyle: DayStyle(
            dayNumStyle: TextStyle(
                color: ColorsManager.black,
                fontSize: 15,
                fontWeight: FontWeight.w700),
            dayStrStyle: TextStyle(
                color: ColorsManager.black,
                fontSize: 15,
                fontWeight: FontWeight.w700),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white,
            ),
          ),
          activeDayStyle: DayStyle(
            dayNumStyle: TextStyle(
                color: ColorsManager.blue,
                fontSize: 15,
                fontWeight: FontWeight.w700),
            dayStrStyle: TextStyle(
                color: ColorsManager.blue,
                fontSize: 15,
                fontWeight: FontWeight.w700),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white,
            ),
          ),
        ),
      );
}
