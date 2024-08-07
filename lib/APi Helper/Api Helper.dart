
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiHelper
{
  Future<List> fetchApi()
  async {
    Response response = await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if(response.statusCode == 200)
      {
        final json = response.body;
        final data = jsonDecode(json);
        return data;
      }
    else
      {
        return[];
      }
  }
}