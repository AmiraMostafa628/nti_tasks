import 'package:flutter/material.dart';
import 'package:nti_tasks/core/models/basket_model.dart';
import 'package:nti_tasks/core/resources/assets_manager.dart';

class Task4 extends StatelessWidget {
  Task4({super.key});

  final BasketModel basketModel = BasketModel(
    image: AssetsManager.basketImage,
    imageBackgroundColor: Colors.purple.shade100,
    title: 'Granola Premium Almond',
    subTitle: '2 packs',
    price: '€ 20.000',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: basketModel.imageBackgroundColor,
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              AssetsManager.basketImage,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            basketModel.title,
          ),
          titleTextStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          subtitle: Text(
            basketModel.subTitle,
          ),
          trailing: Text(
            basketModel.price,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ),
      )),
    );
  }
}
