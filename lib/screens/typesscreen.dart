import 'package:flutter/material.dart';

import '../data.dart';
import '../widgets/typeitem.dart';

class TypesScreen extends StatelessWidget {
  static const routeName='/types-screen';
  const TypesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1.5,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: dataTypes.map((type) {
        return TypeItem(
          id: type.id,
          color: type.color,
          type: type.type,
          photourl: type.photourl,
        );
      }).toList(),
    );
  }
}
