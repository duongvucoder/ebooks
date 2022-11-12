import 'package:flutter/services.dart';

class Networking {
  Future<dynamic> request(String url){
    return rootBundle.loadString(url);
  }
}