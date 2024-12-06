import 'package:flutter/material.dart';
import 'package:to_do/presentation/home/tabs/settings_tab/settings_tab.dart';
import 'package:to_do/presentation/home/tabs/tasks_tab/tasks_tab.dart';
import 'package:to_do/presentation/home/task_bottom_sheet/task_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    const TasksTab(),
    SettingsTab(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('ToDo List'),
      ),
      floatingActionButton: buildFab(),
      bottomNavigationBar: buildBottomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: tabs[currentIndex],
    );
  }

  Widget buildFab() => FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        showTaskBottomSheet();
      });

  Widget buildBottomNavBar() => BottomAppBar(
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Tasks',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'settings')
          ],
        ),
      );

  void onTapped(int index) {
    currentIndex = index;
    setState(() {});
  }

  void showTaskBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => TaskBottomSheet.show(),
    );
  }
}
