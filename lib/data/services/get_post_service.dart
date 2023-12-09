import '/data/models/post.dart';

import '/data/services/base_service.dart';

class GetPostService extends ServiceBase<List<Post>> {
  @override
  Future<List<Post>> call() async {
    final result = await get('post');
    return List.generate(
      result.length,
      (index) => Post.fromJson(result[index]),
    );
  }
}
