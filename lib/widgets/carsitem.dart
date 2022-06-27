import 'package:flutter/material.dart';

import '../screens/caritemscreen.dart';

class CarItem extends StatelessWidget {
  final dynamic carinfo;
  const CarItem({Key? key, this.carinfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(CarItemScreen.routeName, arguments: carinfo.id);
      },
      child: Card(
        margin: const EdgeInsets.all(10),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15)),
              child: Stack(children: [
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.network(carinfo.url),
                  ),
                ),
                Align(
                  heightFactor: 6,
                  alignment: Alignment.bottomRight,
                  child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      color: Colors.black54,
                      child: Text(
                        '${carinfo.name} ${carinfo.model}',
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                )
              ]),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('${carinfo.price}\$',
                    style: Theme.of(context).textTheme.bodyText1),
                Text('${carinfo.mileage} KM',
                    style: Theme.of(context).textTheme.bodyText1),
                Text('Year: ${carinfo.year}',
                    style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
