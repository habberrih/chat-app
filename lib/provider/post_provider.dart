import '../data/services/get_post_service.dart';
import 'package:flutter/material.dart';

import '../data/models/post.dart';

class PostProvider extends ChangeNotifier {
  final List<Post> list = [];

  getPost() async {
    list.clear();
    list.addAll(await GetPostService().call());
    notifyListeners();
  }
}
