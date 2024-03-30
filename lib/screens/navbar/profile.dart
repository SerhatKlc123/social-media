import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';


class ProfileScreen extends StatelessWidget {
   ProfileScreen({Key? key}) : super(key: key);
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Center(child: ElevatedButton(
      onPressed: (){
        box.remove('token');
        box.remove('page');
      },
      child: Text("Clear Data For Test"),
    ),);
  }
}
