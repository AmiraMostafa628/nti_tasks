import 'package:flutter/material.dart';
import 'package:nti_tasks/core/models/subscription_model.dart';

class Task1 extends StatelessWidget {
  Task1({super.key});

  final SubscriptionModel subscription = SubscriptionModel(
      title: 'Monthly',
      subTitle: '-53% discount',
      price: '€ 10.90',
      duration: 'every month');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  leading: Radio(
                    value: 0,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                  title: Text(
                    subscription.title,
                  ),
                  titleTextStyle: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: Text(
                    subscription.subTitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blueAccent,
                    ),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        subscription.price,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        subscription.duration,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
