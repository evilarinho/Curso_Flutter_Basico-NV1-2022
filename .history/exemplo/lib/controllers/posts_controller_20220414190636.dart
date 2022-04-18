import 'dart:convert';

import 'package:exemplo/models/posts_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostsController {
  ValueNotifier<List<Post>> posts = ValueNotifier<List<Post>>([]);
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  callAPI() async {
    var client = http.Client();
    try {
      inLoader.value = true;
      var response = await client.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );
      var decodedResponse = jsonDecode(response.body) as List;
      posts.value = decodedResponse.map((e) => Post.fromJson(e)).toList();
      await Future.delayed(const Duration(seconds: 2)); // ignore: avoid_print
    } finally {
      client.close();
      inLoader.value = false;
    }
  }
}