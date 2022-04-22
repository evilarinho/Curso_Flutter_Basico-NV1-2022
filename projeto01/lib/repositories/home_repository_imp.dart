import 'package:dio/dio.dart';
import 'package:projeto01/models/post_model.dart';
import 'package:projeto01/repositories/home_repository.dart';

class HomeRepositoryImp implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      return (response.data as List)
          .map((e) => PostModel.fromJson(e))
          .toList(); // ignore: avoid_print
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
    return [];
  }
}
