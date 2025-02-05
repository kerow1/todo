import 'package:flutter/material.dart';
import 'package:to_do/core/utils/colors_manager.dart';

class SettingsTab extends StatefulWidget {
  SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  String selectedTheme = 'Light';
  String selectedLang = 'English';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Theme',
            style: TextStyle(fontSize: 16, color: ColorsManager.black),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 48,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: ColorsManager.white,
                border: Border.all(color: ColorsManager.blue, width: 2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedTheme,
                  style: TextStyle(fontSize: 16, color: ColorsManager.blue),
                ),
                DropdownButton<String>(
                  underline: Container(
                    color: Colors.transparent,
                  ),
                  items: <String>['Light', 'Dark'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newTheme) {
                    selectedTheme = newTheme!;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            'Language',
            style: TextStyle(fontSize: 16, color: ColorsManager.black),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 48,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: ColorsManager.white,
                border: Border.all(color: ColorsManager.blue, width: 2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedLang,
                  style: TextStyle(fontSize: 16, color: ColorsManager.blue),
                ),
                DropdownButton<String>(
                  underline: Container(
                    color: Colors.transparent,
                  ),
                  items: <String>['English', 'العربية'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newLang) {
                    selectedLang = newLang!;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
