import 'dart:convert';
import 'dart:io';

import 'package:clima/generated/json/base/json_convert_content.dart';
import 'package:http/http.dart';

class NetworkHelper {
  final String url;
  NetworkHelper(this.url);
  Future<T> getData<T extends JsonConvert>(T toFill) async {
    Response response = await get(url);
    if (HttpStatus.ok == response.statusCode) {
      return toFill.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(response.statusCode);
    }
  }
}
