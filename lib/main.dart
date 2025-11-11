import 'package:flutter/material.dart';
import 'package:tugas6/ui/form.dart';

void main() {
  runApp(const MyApp());
 }

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aplikasi Flutter Pertama',
      home: Mhs_Form()
      //home: ColumnWidget(), 
    );
  }
}