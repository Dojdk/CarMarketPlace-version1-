import 'package:flutter/material.dart';

import '../data.dart';
import '../models/cars.dart';

class CarItemScreen extends StatefulWidget {
  static const routeName = '/car-item-screen';
  const CarItemScreen({Key? key}) : super(key: key);

  @override
  State<CarItemScreen> createState() => _CarItemScreenState();
}

class _CarItemScreenState extends State<CarItemScreen> {
  @override
  Widget build(BuildContext context) {
    final carId = ModalRoute.of(context)!.settings.arguments as dynamic;
    final int index = dataCars.indexWhere(
      (element) => element.id == carId,
    );
    final dynamic neededCar = dataCars[index];
    bool isLiked = liked.contains(neededCar);
    Color iconcolor = isLiked?Colors.red:Colors.white54;
    List<String> fcolumn = [
      'Mark',
      'Model',
      'Year',
      'Price',
      'Motor',
      'Motor Power',
      'Milleage',
      'Transmission',
    ];
    List<String> scolumn = [
      '${neededCar.name}',
      '${neededCar.model}',
      '${neededCar.year}',
      '${neededCar.price}',
      '${neededCar.engine} L',
      '${neededCar.power}',
      '${neededCar.mileage}',
      neededCar.transmission == Transmission.automatic
          ? 'Automatic'
          : 'Mechanic',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).viewPadding.top,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(
                  onPressed: (() => Navigator.of(context).pop()),
                  color: Colors.white54,
                ),
                IconButton(
                  onPressed: () {
                    isLiked ? isLiked = false : isLiked = true;
                    setState(() {
                      isLiked?iconcolor = Colors.red:iconcolor =Colors.white54;
                    });
                    if (isLiked) liked.add(neededCar);
                    if (!isLiked) liked.remove(neededCar);
                  },
                  icon: Icon(
                    Icons.favorite_border,
                    color: iconcolor,
                  ),
                ),
              ],
            ),
            Image.network(neededCar.url),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: fcolumn.map((text) {
                    return Text(text,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.white54));
                  }).toList(),
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: scolumn.map((text) {
                    return Text(text,
                        style: Theme.of(context).textTheme.bodyText1);
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
