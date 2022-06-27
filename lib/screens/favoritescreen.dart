import 'package:flutter/material.dart';

import '../data.dart';
import '../widgets/carsitem.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: liked.isEmpty
            ? const Text('No favourite item yet')
            : ListView.builder(
                itemCount: liked.length,
                itemBuilder: (context, index) {
                  return CarItem(carinfo: liked[index]);
                }));
  }
}
