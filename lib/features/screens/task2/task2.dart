import 'package:flutter/material.dart';
import 'package:nti_tasks/core/models/info_model.dart';
import 'package:nti_tasks/core/shared_widget/custom_divider.dart';
import 'package:nti_tasks/core/shared_widget/custom_text_button.dart';
import 'package:nti_tasks/features/screens/task2/custom_title.dart';

class Task2 extends StatelessWidget {
  Task2({super.key});

  final InfoModel infoModel = InfoModel(
    mainNumber: '+1 202 555 0181',
    homeNumber: '+1 202 555 0113',
    bio: 'Design adds value Faster,then is adds cost',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading:  CustomTextButton(
                text: 'Cancel',
              ),
              title: Center(
                child: Text(
                  'Info',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              trailing: CustomTextButton(
                text: 'Done',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTitle(
                    text: 'main',
                  ),
                  Text(
                    infoModel.mainNumber,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                    ),
                  ),
                  const CustomDivider(),
                  const CustomTitle(
                    text: 'home',
                  ),
                  Text(
                    infoModel.mainNumber,
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  const CustomDivider(),
                  const CustomTitle(
                    text: 'bio',
                  ),
                  Text(
                    infoModel.bio,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  const CustomDivider(),
                  const ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: CustomTitle(
                      text: 'Notifications',
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 4,
                      children: [
                        Text(
                          'Enabled',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                  const CustomDivider(),
                  const CustomTextButton(
                    text: 'Delete Contact',
                    textColor: Colors.red,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
