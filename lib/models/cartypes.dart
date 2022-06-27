import 'package:flutter/material.dart';

class Cartypes{
  final String id;
  final String type;
  final Color color;
  final String photourl;

  const Cartypes({required this.id,required this.type,this.color=Colors.red,required this.photourl});
}