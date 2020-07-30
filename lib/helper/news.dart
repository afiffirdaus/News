import 'dart:convert';

import 'package:News/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        "http://newsapi.org/v2/everything?q=bitcoin&from=2020-06-29&sortBy=publishedAt&apiKey=97a5a8acf02447849dc15310f498a78a";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {}
      });
    }
  }
}
