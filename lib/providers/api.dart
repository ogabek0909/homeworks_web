import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api with ChangeNotifier{
  void getGroup()async{
    Uri url = Uri(
      scheme: 'https',
      host: 'codeschoolhomeworkapi.pythonanywhere.com',
      path: 'student/get-groups/',
    );
    await http.get(url);
  }
}
