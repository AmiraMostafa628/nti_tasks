import 'package:flutter/material.dart';
import 'package:nti_tasks/core/models/privacy_model.dart';
import 'package:nti_tasks/core/shared_widget/custom_divider.dart';

class CustomPrivacyItem extends StatelessWidget {
  CustomPrivacyItem({super.key});

  final List<PrivacyModel> items = [
    PrivacyModel(
      title: 'Last seen and online',
      subTitle: 'Everyone',
      icon: Icons.arrow_forward_ios,
    ),
    PrivacyModel(
      title: 'Profile photo',
      subTitle: 'Everyone',
      icon: Icons.arrow_forward_ios,
    ),
    PrivacyModel(
      title: 'About',
      subTitle: 'Everyone',
      icon: Icons.arrow_forward_ios,
    ),
    PrivacyModel(
      title: 'Read receipts',
      subTitle:
      'if turned off, you won\'t send or receive Read receipts. Read receipts ara always send for group chat',
      icon: Icons.check_box,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.asMap().entries.map((entry) {
        int index = entry.key;
        var item = entry.value;
        bool condition = index == items.length - 1;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  item.title,
                ),
                titleTextStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                subtitle: Text(
                  item.subTitle,
                ),
                subtitleTextStyle: TextStyle(
                  color: Colors.grey,
                ),
                trailing: Icon(
                  item.icon,
                  size: !condition ? 16 : 30,
                  color: !condition ? Colors.black : Colors.green,
                ),
              ),
              const CustomDivider(),
            ],
          ),
        );
      }).toList(),
    );
  }
}