import 'package:flutter/material.dart';

import '../data.dart';
import '../models/cars.dart';
import '../widgets/carsitem.dart';

class CarsScreen extends StatelessWidget {
  static const routeName = '/cars-screen';
  const CarsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final typeId = ModalRoute.of(context)!.settings.arguments as String;
    List<Cars> displayedcars =
        dataCars.where((element) => element.typeid.contains(typeId)).toList();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cars'),
        ),
        body: ListView.builder(
            itemCount: displayedcars.length,
            itemBuilder: (context, index) {
              return CarItem(carinfo: displayedcars[index]);
            }));
  }
}
