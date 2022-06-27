import 'package:flutter/material.dart';

import '../screens/carsscreen.dart';

class TypeItem extends StatelessWidget {
  final String id;
  final String type;
  final Color color;
  final String photourl;
  const TypeItem(
      {Key? key,
      required this.id,
      required this.color,
      required this.type,
      required this.photourl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(CarsScreen.routeName, arguments: id);
      },
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 66,
              width: 250,
              child: Image.asset(
                photourl,
                color: color,
              ),
            ),
            Text(
              type,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
