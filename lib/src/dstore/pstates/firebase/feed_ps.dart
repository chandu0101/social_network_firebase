import 'package:dstore/dstore.dart';
import 'package:social_network/src/dstore/databases/firebase.dart';
part 'feed_ps.ps.dstore.dart';

@PState()
class $_FeedPS {
  StreamField<Post, dynamic> posts = StreamField<Post, dynamic>();
  int temp = 0;
  void addPost(Post post) async {
    await CollectionRefs.posts.add(post);
    this.temp = 1;
  }
}
