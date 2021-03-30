import 'dart:convert';
import 'package:demo_get/data/modal/book_modal.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class MyApiClient {

final http.Client httpClient;
MyApiClient({@required this.httpClient});

getAll() async {
  try {
    var response = await httpClient.get(Uri.parse(baseUrl), headers: {"Accept": "application/json"});
    if(response.statusCode == 200){
      Iterable jsonResponse = json.decode(response.body);
        List<BookModal> listMyModel = jsonResponse.map((model) => BookModal.fromJson(model)).toList();
      return listMyModel;
    }else print ('erro');
  } catch(_){ }
}

getId(id) async {
  try {
      var response = await httpClient.get(Uri.parse('baseUrl'));
    if(response.statusCode == 200){
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      print("object $jsonResponse");
    }else print ('erro -get');
  } catch(_){ }
}


}

//1