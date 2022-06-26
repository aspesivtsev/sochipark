import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import '../models/attractions.dart';
import '../models/httpresponse.dart';

class APIHelper {
  static Future<HTTPResponse<List<Attraction>>> getAttractions() async {
    var url = Uri.parse('http://127.0.0.1:8000/api/attractions/');
    try {
      var response =
          await get(url, headers: {'Content-Type': 'application/json'});
      if (response.statusCode == 200) {
        var body = jsonDecode(utf8.decode(response.bodyBytes));
        List<Attraction> attractionList = [];
        body.forEach((e) {
          Attraction attraction = Attraction.fromJson(e);
          attractionList.add(attraction);
        });
        print("got the reply from server!");
        print(attractionList);
        return HTTPResponse(true, attractionList,
            message: 'OK', responseCode: response.statusCode);
      } else {
        print("smth went wrong");
        return HTTPResponse(false, [],
            message: 'Invalid response from server!',
            responseCode: response.statusCode);
      }
    } on SocketException {
      print("Unable to reach interenet!");
      return HTTPResponse(false, [], message: 'Unable to reach interenet!');
    } on FormatException {
      print("Invalid resp from server!");
      return HTTPResponse(false, [], message: 'Invalid response from server!');
    } catch (e) {
      print('Unknown');
      return HTTPResponse(false, [], message: 'Something went wrong!');
    }
  }
}
