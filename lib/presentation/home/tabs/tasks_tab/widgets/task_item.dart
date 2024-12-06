import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:to_do/core/utils/app_styles.dart';
import 'package:to_do/core/utils/colors_manager.dart';
import 'package:to_do/core/utils/date_utils.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Slidable(
        startActionPane: ActionPane(motion: DrawerMotion(), children: [
          SlidableAction(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15), topLeft: Radius.circular(15)),
            flex: 2,
            onPressed: (context) {},
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
            autoClose: true,
          ),
          SlidableAction(
            autoClose: true,
            flex: 2,
            onPressed: (context) {},
            backgroundColor: ColorsManager.blue,
            foregroundColor: ColorsManager.white,
            icon: Icons.edit,
            label: 'Edit',
          ),
        ]),
        child: Container(
          //margin: EdgeInsets.all(8),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                height: 62,
                width: 4,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Task Title',
                    style: AppLightStyles.taskTitle,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text('Task Description', style: AppLightStyles.taskDesc),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    DateTime.now().toFormattedDate,
                    style: AppLightStyles.taskDate,
                  )
                ],
              ),
              const Spacer(),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: const Icon(
                    Icons.check,
                    color: ColorsManager.white,
                    size: 30,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
